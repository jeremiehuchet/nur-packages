{ pkgs, lib, stdenvNoCC, nodejs-12_x }:

with import ../../../lib { inherit pkgs; };

mkNodeDerivation {
  packageFile = ./package.json;
  lockFile = ./package-lock.json;
  meta = with lib; {
    description =
      "WebTorrent, the streaming torrent client. For the command line.";
    license = licenses.mit;
    homepage = "https://webtorrent.io";
    platforms = [ "x86_64-linux" ];
  };
}
