{ pkgs, lib, fetchFromGitHub }:

let
  github = lib.importJSON ./github.json;
  src = fetchFromGitHub {
    inherit (github) owner repo rev hash;
  };
in import src { inherit pkgs; }
