#!/usr/bin/env bash
set -e
set -x

source "$TOOLS"

pkgdir=$1
cd "$pkgdir"

function update() {
  local pinfile="$1"
  owner=$(jq -r '.owner' "$pinfile")
  repo=$(jq -r '.repo' "$pinfile")
  refname=$(jq -r '.ref' "$pinfile")
  old_rev=$(jq -r '.rev' "$pinfile")

  # if it's a branch
  latest_rev=$(git ls-remote --heads "https://github.com/$owner/$repo.git" "$refname" | cut -f1)
  if [ -n "$latest_rev" ] ; then
    if [ "$old_rev" != "$latest_rev" ] ; then
      old_version=$refname@${old_rev:0:7}
      new_version=${latest_rev:0:7}
      nix-prefetch-github --rev "$refname" "$owner" "$repo" | jq ".ref = \"$refname\"" > "$pinfile"
    fi
  else
    # it's not a branch, assuming we use the latest released tag
    latest_tag=$(hub api "repos/$owner/$repo/tags" | jq -r '.[0].name')
    if [ "$refname" != "$latest_tag" ] ; then
      old_version=$refname
      new_version=$latest_tag
      nix-prefetch-github --rev "$latest_tag" "$owner" "$repo" \
          | jq ".ref = \"$latest_tag\"" > "$pinfile"
    fi
  fi
}

for f in $(find -name 'github-*.json') ; do
  update $f
done

update github.json

export_version_vars $old_version $new_version
