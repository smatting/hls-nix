This contains builds of haskell-language-server version 0.4.0.0 for GHC version 8.6.5 and and 8.8.4 from nixpkgs that seem to work on my nixos machine.
You can install them via `nix-env -i -f ./release.nix`.

When using the static binaries I experience issues similar to
https://github.com/haskell/haskell-language-server/issues/221 

```
Error dynamically loading libm.so.6:
libm.so.6: cannot open shared object file: No such file or directory
```
and 
```
HSghc-prim-0.5.3.o: unknown symbol `exp'
```
for _some_ modules.
