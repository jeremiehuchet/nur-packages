{ pkgs ? import <nixpkgs> }:

{
  package = pkgs.writeScriptBin "expo" ''
    #!/usr/bin/env sh
    echo "expo is not installed" >&2
    exit 1
  '';
}
