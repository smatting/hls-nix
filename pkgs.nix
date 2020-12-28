let
  src = import ./nix/sources.nix;
in
  import src.nixpkgs {}
