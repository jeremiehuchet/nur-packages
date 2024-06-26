{ stdenvNoCC, lib, fetchFromGitHub, nodejs, rofi }:


let github = lib.importJSON ./github.json;
in stdenvNoCC.mkDerivation {
  pname = "rofi-bookmarks";
  version = github.version;

  src = fetchFromGitHub { inherit (github) owner repo rev hash; };

  buildInputs = [ nodejs ];

  installPhase = ''
    mkdir -p $out/bin $out/share/rofi-bookmarks
    install -Dm755 rofi-modi-bookmarks.js $out/share/rofi-bookmarks
    cat - <<EOF > $out/bin/rofi-bookmarks
    #!/bin/sh
    exec ${rofi}/bin/rofi -modi bookmarks:"$out/share/rofi-bookmarks/rofi-modi-bookmarks.js" -show bookmarks
    EOF
    chmod +x $out/bin/rofi-bookmarks
  '';

  meta = with lib; {
    description = "Rofi script to open chrome bookmarks";
    license = licenses.mit;
    homepage = "https://github.com/jeremiehuchet/rofi-bookmarks";
    platforms = platforms.all;
  };
}
