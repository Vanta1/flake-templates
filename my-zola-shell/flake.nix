# this is mostly from https://fasterthanli.me/series/building-a-rust-service-with-nix/part-10#a-flake-with-derivation

let 
  name = "my-zola-shell";
in
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = { self, nixpkgs, flake-utils, rust-overlay }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let
          pkgs = import nixpkgs {
            inherit system;
            zola
          };
        in
        with pkgs;
        {
          devShells.default = mkShell {
            shellHook = ''
              echo "entering ${name} devshell..."
            '';
          };
        }
      );
}