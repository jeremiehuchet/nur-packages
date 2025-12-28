# This file describes your repository contents.
# It should return a set of nix derivations
# and optionally the special attributes `lib`, `modules` and `overlays`.
# It should NOT import <nixpkgs>. Instead, you should take pkgs as an argument.
# Having pkgs default to <nixpkgs> is fine though, and it lets you use short
# commands such as:
#     nix-build -A mypackage

{ pkgs ? import <nixpkgs> { } }:

let
  poetry2nix = pkgs.callPackage ./pkgs/poetry2nix { };
in {
  # The `lib`, `modules`, and `overlay` names are special
  lib = import ./lib { inherit pkgs; }; # functions
  modules = import ./modules; # NixOS modules
  overlays = import ./overlays; # nixpkgs overlays

  inherit poetry2nix;

  ccat = pkgs.callPackage ./pkgs/ccat { };
  dbvisualizer = pkgs.callPackage ./pkgs/dbvisualizer { };
  gitmoji-cli = pkgs.callPackage ./pkgs/node-packages/gitmoji-cli/fixed.nix { };
  hass-mqtt-bridge = pkgs.callPackage ./pkgs/hass-mqtt-bridge { };
  kubeone = pkgs.callPackage ./pkgs/kubeone { };
  livebox-cli = pkgs.callPackage ./pkgs/livebox-cli { };
  nix-direnv = pkgs.callPackage ./pkgs/nix-direnv { };
  notracking = pkgs.callPackage ./pkgs/notracking { };
  pyrandr = pkgs.callPackage ./pkgs/pyrandr { };
  reg = pkgs.callPackage ./pkgs/reg { };
  rofi-bookmarks = pkgs.callPackage ./pkgs/rofi-bookmarks { };
  yaml2json = pkgs.callPackage ./pkgs/yaml2json { };
}
