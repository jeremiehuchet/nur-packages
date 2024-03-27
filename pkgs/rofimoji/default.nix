{ pkgs, lib, fetchFromGitHub, poetry2nix}:

let
  github = lib.importJSON ./github.json;
in poetry2nix.mkPoetryApplication {
  pname = "rofimoji";
  version = github.ref;

  projectDir = fetchFromGitHub {
    inherit (github) owner repo rev sha256;
  };

  meta = with lib; {
    homepage = "https://github.com/fdw/rofimoji";
    description = "A simple emoji and character picker for rofi 😁";
    license = licenses.mit;
    platforms = platforms.all;
    maintainers = [ ];
  };
}
