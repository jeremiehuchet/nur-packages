# This file has been generated by the CI update script. Do not edit!

{ pkgs, lib, system }:

# This is to complete the hack for packaging node applications.
# We used node2nix on a package.json file having one single
# dependency: the node application we want to package. But it
# causes node2nix to mispackage the app: it doesn't generate
# binaries in $out/bin/.
# To make it work, we move the node application to install from
# the dependency section to the derivation source attribute.
#
# As an illustration, we applied node2nix on the following
# package.json:
#     {
#       "name": "node-app",
#       "dependencies": {
#         "node-app": "1.0.0"
#       }
#     }
#
# So node2nix generated someting like:
#     {
#       "name": "node-app",
#       "dependencies": {
#         "node-app": "1.0.0",
#         "transitive-dep-a": "2.1.0",
#         ...
#       }
#     }
#
# But we are turning the result in:
#     {
#       "name": "node-app",
#       // src = fetched node module "node-app": "1.0.0"
#       "dependencies": {
#         "transitive-dep-a": "2.1.0",
#         ...
#       }
#     }
let
  nodePackage = lib.importJSON ./package.json;
  name = nodePackage.name;
  version = nodePackage.dependencies."${name}";
  fullname = "${name}-${version}";
  original = import ./default.nix { inherit pkgs system; };
  renamedpkg = original.package.overrideAttrs (old: { inherit fullname; });
  selfpkg = original.sources.${fullname};
  requireNativeNodeGypBuild =
    lib.any (dep: dep.name == "node-gyp-build") original.args.dependencies;
in renamedpkg.override {
  src = selfpkg.src;
  dependencies = lib.remove selfpkg original.args.dependencies;
  buildInputs = [ ]
    ++ lib.optional requireNativeNodeGypBuild pkgs.nodePackages.node-gyp-build;
}
