{ stdenvNoCC, lib, fetchFromGitHub, python3, xrandr }:

let github = lib.importJSON ./github.json;
in stdenvNoCC.mkDerivation {
  pname = "pyrandr";
  version = github.version;

  src = fetchFromGitHub { inherit (github) owner repo rev hash; };

  buildInputs = [ python3 xrandr ];

  installPhase = ''
    install -vDm755 pyrandr.py "$out/bin/pyrandr"
  '';

  meta = with lib; {
    description =
      "xrandr python wrapper for better screen scale and positioning ";
    license = licenses.unlicense;
    homepage = "https://github.com/jeremiehuchet/pyrandr";
    platforms = platforms.all;
  };
}
