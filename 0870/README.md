# `0870/FoldReverse.hs`

## Interactive

```console
$ ghci
```
```haskell
GHCi, version 9.4.8: https://www.haskell.org/ghc/  :? for help
λ :load FoldReverse.hs
[1 of 1] Compiling FoldReverse             ( FoldReverse.hs, interpreted )
Ok, one module loaded.
λ myfoldl (+) 0 [1,2,3]
6
λ myfoldr (+) 0 [1,2,3]
6
λ sumtotall [1,2,3]
6
λ sumtotalr [1,2,3]
6
λ myreverselcat [1,2,3]
[3,2,1]
λ myreverselcons1 [1,2,3]
[3,2,1]
λ myreverselcons2 [1,2,3]
[3,2,1]
λ myreversercat [1,2,3]
[3,2,1]
```

## Linting

```console
hlint FoldReverse.hs
```
