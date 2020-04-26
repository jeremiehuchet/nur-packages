{ lib, fetchFromGitHub }:

let github = lib.importJSON ./github.json;
in fetchFromGitHub {
  name = "notracking";
  #inherit (github) owner repo rev sha256;
  owner = "notracking";
  repo = "hosts-blocklists";
  rev = "34ece229063c155bcb705f199541e85c5e801ae9";
  sha256 = "1sxp7lqgxn5z4ci2lq0s6jf3y4c6zx1w9x81rr6kf196bf3nyrp6";
}
