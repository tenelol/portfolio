{
  description = "portfolio";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        apps.default = flake-utils.lib.mkApp {
          drv = pkgs.writeShellApplication {
            name = "devserver";
            runtimeInputs = [
              pkgs.nodejs_20
              pkgs.nodePackages.pnpm
            ];
            text = ''
              exec pnpm dev
            '';
          };
        };
        devShells.default = pkgs.mkShell {
          packages = [
            pkgs.nodejs_20
            pkgs.nodePackages.pnpm
          ];
        };
      }
    );
}
