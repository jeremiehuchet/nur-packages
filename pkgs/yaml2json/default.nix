{ pkgs, lib, stdenvNoCC, fetchurl }:

let
  github = lib.importJSON ./github-release-assets.json;
in stdenvNoCC.mkDerivation {
  pname = "yaml2json";
  version = github.version;
  src = fetchurl {
    inherit (github.assets.yaml2json_linux_amd64) url hash;
  };
  unpackPhase = ":";
  installPhase = ''
    ls -l
    mkdir -p $out/bin
    install -m755 $src $out/bin/yaml2json
  '';
  meta = {
    homepage = "https://github.com/bronze1man/yaml2json";
    description = "A command line tool convert from yaml to json";
    license = lib.licenses.mit;
    platforms = [ "x86_64-linux" ];
  };
}

