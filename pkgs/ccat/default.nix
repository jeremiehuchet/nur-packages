{ lib, buildGoPackage, fetchFromGitHub }:

let github = lib.importJSON ./github.json;
in buildGoPackage {
  pname = "ccat";
  version = github.version;
  goPackagePath = "github.com/jingweno/ccat";
  src = fetchFromGitHub { inherit (github) owner repo rev hash; };

  meta = with lib; {
    description =
      "ccat is the colorizing cat. It works similar to cat but displays content with syntax highlighting.";
    license = licenses.mit;
    homepage = "https://github.com/owenthereal/ccat";
  };
}
