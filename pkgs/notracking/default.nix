{ lib, fetchFromGitHub }:

let github = lib.importJSON ./github.json;
in fetchFromGitHub {
  name = "notracking-${github.version}";
  inherit (github) owner repo rev hash;
}
