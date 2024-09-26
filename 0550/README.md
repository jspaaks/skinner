# `0550/Folding.hs`

## Interactive

```console
$ cd 0550
$ ghci
GHCi, version 9.4.8: https://www.haskell.org/ghc/  :? for help
```
```haskell
λ :load Folding.hs
[1 of 1] Compiling Folding             ( Folding.hs, interpreted )
Ok, one module loaded.
λ foldl (+) 0 [1,2,3]
6
λ foldl (+) 10 [1,2,3]
16
λ foldr (+) 0 [1,2,3]
6
```

## Linting

```console
hlint Folding.hs
```
