{ stdenvNoCC, lib, fetchurl, unzip }:

let
  github = lib.importJSON ./github-release-assets.json;
  version = lib.strings.removePrefix "v" github.version;
in stdenvNoCC.mkDerivation {
  pname = "kubeone";
  inherit version;

  src = let
    platformName = {
      x86_64-linux = "linux_amd64";
      x86_64-darwin = "darwin_amd64";
    }.${stdenvNoCC.hostPlatform.system} or (throw "unsupported system ${stdenvNoCC.hostPlatform.system}");
    checksums = fetchurl {
      name = "kubeone-${version}_checksums.txt";
      url = github.assets."kubeone_${version}_checksums.txt".url;
      hash = github.assets."kubeone_${version}_checksums.txt".hash;
    };
  in fetchurl {
    url = github.assets."kubeone_${version}_${platformName}.zip".url;
    hash = github.assets."kubeone_${version}_${platformName}.zip".hash;
    downloadToTemp = true;
    postFetch = ''
      cp $downloadedFile $name
      sha256sum --check --ignore-missing ${checksums}
      cp $name $out
    '';
  };

  buildInputs = [ unzip ];

  unpackPhase = ''
    unzip $src
  '';

  installPhase = ''
    install -Dm755 kubeone "$out/bin/kubeone"
  '';

  meta = with lib; {
    homepage = "https://github.com/kubermatic/kubeone";
    description =
      "Kubermatic KubeOne automate cluster operations on all your cloud, on-prem, edge, and IoT environments.";
    license = licenses.asl20;
    platforms = [ "x86_64-linux" "x86_64-darwin" ];
    maintainers = [ ];
  };
}
