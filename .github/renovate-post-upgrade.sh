#!/usr/bin/env bash
set -eu
set -o errexit
set -o pipefail

GITDIR=$(git rev-parse --show-toplevel)
cd "$GITDIR"

CANDIDATE_FILES_FOR_UPDATE=$(find -type f)

while [[ $# -gt 0 ]]; do
  case $1 in
    -m|--modified)
      CANDIDATE_FILES_FOR_UPDATE=$(git status --porcelain | sed 's|^.. ||g')
      shift # past argument
      ;;
    --gh-auth)
      gh auth login
      shift # past argument
      ;;
    *)
      echo "usage: $0 [--modified]"
      exit 1
      ;;
  esac
done

echo "🔧 Post-processing updated files"

for githubLockFile in $(find -type f -name 'github*.json' ! -name github-release-assets.json | sed 's|^[.]/||g'); do
  if echo $CANDIDATE_FILES_FOR_UPDATE | grep $githubLockFile > /dev/null ; then
    echo "📦️ (nix hash) $githubLockFile"
    old_lockfile=$(mktemp --suffix=.json)
    cat "$githubLockFile" > "$old_lockfile"
    new_lockfile=$(mktemp --suffix=.json)
    $(jq -r '"nix-prefetch-github --json --rev " + .version + " " + .owner + " " + .repo' "$githubLockFile") > "$new_lockfile"
    jq -s '.[0] * .[1]' "$old_lockfile" "$new_lockfile" > "$githubLockFile"
  fi
done

for gihubAssetsFile in $(find -type f -name 'github-release-assets.json' | sed 's|^[.]/||g') ; do
  if echo $CANDIDATE_FILES_FOR_UPDATE | grep $gihubAssetsFile > /dev/null ; then
    echo "📎 (github release assets) $gihubAssetsFile"
    old_file=$(mktemp --suffix=.json)
    jq 'del(.assets)' "$gihubAssetsFile" > "$old_file"
    repo=$(jq -r '.owner + "/" + .repo' "$gihubAssetsFile")
    version=$(jq -r '.version' "$gihubAssetsFile")
    new_assets=$(mktemp --suffix=.json)
    gh release --repo "$repo" view "$version" --json assets | jq '.assets | INDEX(.name) | map_values({url: .url})' > "$new_assets"
    for asset_name in $(jq -r 'keys[]' "$new_assets"); do
      asset_url=$(jq -r '."'$asset_name'".url' "$new_assets")
      cat <<EOF >> "$new_assets-hashs"
{
  "$asset_name": {
    "url": "$asset_url",
    "hash": "$(nix store prefetch-file --json "$asset_url" | jq -r '.hash')"
  }
}
EOF
    done
    jq -s '(. | add | { assets: . })' "$new_assets-hashs" > "$new_assets-mergeable"
    jq -s '.[0] * .[1]' "$old_file" "$new_assets-mergeable" > "$gihubAssetsFile"
  fi
done

for nodePackageFile in $(find -type f -name package.json | sed 's|^[.]/||g'); do
  if echo $CANDIDATE_FILES_FOR_UPDATE | grep $nodePackageFile > /dev/null ; then
    pkgdir=$(dirname "$nodePackageFile")
    echo "📦️ (node2nix) $pkgdir"
    (
      cd "$pkgdir"
      node2nix --nodejs-18 --strip-optional-dependencies
    )
    cp "$GITDIR/.github/node2nix-fix-template.nix" "$pkgdir/fixed.nix"
  fi
done
