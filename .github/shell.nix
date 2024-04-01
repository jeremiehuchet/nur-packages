{ pkgs ? import <nixpkgs> { } }:
pkgs.stdenv.mkDerivation {
  name = "update-env";
  buildInputs = with pkgs; [
    gh
    jq
    nix-prefetch-github
    nodePackages.node2nix
  ];
  shellHook = ''
  '';
}
