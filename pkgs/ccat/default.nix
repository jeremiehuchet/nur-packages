{ stdenvNoCC, lib, fetchurl, unzip }:

let
  github = lib.importJSON ./github-release-assets.json;
  version = lib.strings.removePrefix "v" github.version;
in stdenvNoCC.mkDerivation {
  pname = "ccat";
  inherit version;

  src = let
    platformName = {
      x86_64-linux = "linux-amd64";
      x86_64-darwin = "darwin-amd64";
    }.${stdenvNoCC.hostPlatform.system} or (throw "unsupported system ${stdenvNoCC.hostPlatform.system}");
    checksums = fetchurl {
      name = "checksums.txt";
      url = github.assets."checksums.txt".url;
      hash = github.assets."checksums.txt".hash;
    };
  in fetchurl {
    url = github.assets."ccat-${version}-${platformName}.tar.gz".url;
    hash = github.assets."ccat-${version}-${platformName}.tar.gz".hash;
    downloadToTemp = true;
    postFetch = ''
      cp $downloadedFile $name
      cat ${checksums} | grep $name | sha256sum --check
      cp $name $out
    '';
  };

  unpackPhase = ''
    tar -zxf $src
  '';

  installPhase = ''
    install -Dm755 ccat "$out/bin/ccat"
  '';

  meta = with lib; {
    description = "cat on steroids";
    license = licenses.mit;
    homepage = "https://github.com/batmac/ccat";
  };
}
