let
  src = import ./nix/sources.nix;
  pkgs = import src.nixpkgs {};
in
# import ./default.nix { inherit pkgs; }
import ./default.nix { pkgs = import <nixpkgs> {}; }
