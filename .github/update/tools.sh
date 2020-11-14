#!/usr/bin/env bash

generate_matrix() {
  local gh_pkgs_json node_pkgs_json matrix_csv
  gh_pkgs_json=$(find "$GITDIR" -type f -name github.json)
  node_pkgs_json=$(find "$GITDIR" -type f -name package.json)
  matrix_csv=$(mktemp --tmpdir matrix-XXX.csv)
  echo "name,pkgdir,github_src,npm_src,vgo2nix" > "$matrix_csv"
  for f in $gh_pkgs_json $node_pkgs_json; do
    path=$(dirname "$f")
    pkgname=$(basename "$path")
    pkgdir=${path#$GITDIR/}
    github_src=$(test -f "$pkgdir/github.json"  && echo true || echo false)
    npm_src=$(test    -f "$pkgdir/package.json" && echo true || echo false)
    vgo2nix=$(test    -f "$pkgdir/godeps.nix"   && echo true || echo false)
    echo "$pkgname,$pkgdir,$github_src,$npm_src,$vgo2nix" >> "$matrix_csv"
  done
  mlr --c2j --jlistwrap cat "$matrix_csv"
}

quit() {
  echo "$1"
  exit 0
}

fail() {
  echo "$1" >&2
  exit 1
}

export_version_vars() {
  cat - <<EOF >> "$GITHUB_ENV"
old_version=$1
new_version=$2
EOF
}

commit_optional_changes() {
  pname=$(basename "$PWD")

  git diff --exit-code && quit "✅ git workspace is still clean: nothing to update"

  echo "🎉 A new version is available for $pname: $old_version → $new_version"
  git checkout -b "update/$pname"
  git add .
  git commit -m "⬆️ $pname $old_version → $new_version"
}

configure_git() {
  # configure git
  git config user.email "$GITHUB_ACTOR@users.noreply.github.com"
  git config user.name "Github Actions"

  # make remote "origin" writeable
  git remote set-url --push origin "git@github.com:$GITHUB_REPOSITORY.git"
}