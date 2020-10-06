{ pkgs ? import <nixpkgs> {} }:

with pkgs;

let
  c = { ghc, version }: (
    {
      name = "bin/haskell-language-server-${version}";
      path = "${haskell.packages.${ghc}.haskell-language-server}/bin/haskell-language-server-${version}";
    }
  );
in
  linkFarm "haskell-language-server-multiple" [
    (c { ghc = "ghc865"; version = "8.6.5"; })
    (c { ghc = "ghc884"; version = "8.8.4"; })
  ]

