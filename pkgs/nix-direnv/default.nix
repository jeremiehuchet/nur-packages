{ stdenvNoCC, lib, fetchFromGitHub }:

let github = lib.importJSON ./github.json;
in stdenvNoCC.mkDerivation rec {
  pname = "nix-direnv";
  version = github.version;

  src = fetchFromGitHub { inherit (github) owner repo rev hash; };

  installPhase = ''
    install -Dm644 direnvrc "$out/share/nix-direnv/direnvrc"
  '';

  meta = with lib; {
    description = "A fast, persistent use_nix implementation for direnv";
    license = licenses.mit;
    homepage = "https://github.com/nix-community/nix-direnv";
    platforms = platforms.all;
  };
}
