{ pkgs }:

with pkgs.lib;

let
  mkDerivation = pkgs.stdenvNoCC.mkDerivation;
  fetchShell = { buildInputs, script, hash }:
    mkDerivation {
      name = "fetch-shell";
      builder = pkgs.writeText "fetch-shell-builder" ''
        source $stdenv/setup
        export HOME=$TMP
        ${script}
      '';
      inherit buildInputs;
      # This is a fixed-output derivation; the output must be a regular
      # file with SHA256 hash.
      outputHashMode = "flat";
      outputHashAlgo = "sha256";
      outputHash = hash;
    };
in {
  mkNodeDerivation = { packageFile, lockFile, meta }:
    let attrs = importJSON packageFile;
    in mkDerivation {
      pname = attrs.name;
      version = attrs.version;
      src = fetchShell {
        hash =
          "sha256:3b4fe61781ed9bf934fd8cc968e8e2000c4f1b2f079099d721d918d23c2fbeeb";
        buildInputs = [ pkgs.nodejs-12_x pkgs.git pkgs.bash ];
        script = ''
          cp ${packageFile} package.json
          cp ${lockFile} package-lock.json
          npm ci
          tar -C node_modules --sort=name --owner=root --group=root --mtime='1970-01-01' -cf $out.tar
        '';
      };
      buildInputs = [ pkgs.nodejs-12_x ];
      installPhase = ''
        ls -l
      '';
      inherit meta;
    };
}
