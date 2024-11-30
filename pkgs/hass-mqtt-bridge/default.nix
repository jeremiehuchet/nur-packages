{ lib, rustPlatform, fetchFromGitHub, openssl, pkg-config }:

let
  github = lib.importJSON ./github.json;
  src = fetchFromGitHub { inherit (github) owner repo rev hash; };
in rustPlatform.buildRustPackage {
  pname = "hass-mqtt-bridge";
  version = github.version;
  cargoLock = {
    lockFile = "${src}/Cargo.lock";
    outputHashes = {
      "ha-mqtt-discovery-0.1.0" = (lib.importJSON ./github-ha-mqtt-discovery.json).hash;
      "rika-firenet-client-0.1.0" = (lib.importJSON ./github-rika-firenet-client.json).hash;
      "somfy-protect-client-0.1.0" = (lib.importJSON ./github-somfy-protect-client.json).hash;
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
