{ lib, rustPlatform, fetchFromGitHub, openssl, pkg-config }:

let
  github = lib.importJSON ./github.json;
  src = fetchFromGitHub { inherit (github) owner repo rev hash; };
in rustPlatform.buildRustPackage {
  pname = "hass-mqtt-bridge";
  version = github.ref;
  cargoLock = {
    lockFile = "${src}/Cargo.lock";
    outputHashes = {
      "hass-mqtt-autodiscovery-0.1.0" = "sha256-${(lib.importJSON ./github-hass-mqtt-autodiscovery.json).sha256}";
      "rika-firenet-client-0.1.0" = "sha256-${(lib.importJSON ./github-rika-firenet-client.json).sha256}";
      "somfy-protect-client-0.1.0" = "sha256-${(lib.importJSON ./github-somfy-protect-client.json).sha256}";
    };
  };
  inherit src;
  nativeBuildInputs = [pkg-config];
  buildInputs = [openssl];
  doCheck = false;

  meta = with lib; {
    description = "An mqtt bridge to add some integrations to Home Assistant";
    license = licenses.gpl3;
    homepage = "https://github.com/jeremiehuchet/hass-mqtt-bridge";
  };
}
