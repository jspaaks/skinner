# `0880/Zipping.hs`

## Interactive

```console
$ ghci
GHCi, version 9.4.8: https://www.haskell.org/ghc/  :? for help
```
```haskell
λ :load Zipping.hs
[1 of 1] Compiling Zipping             ( Zipping.hs, interpreted )
Ok, one module loaded.
λ myZipWith (,) [] "asljkd"
[]
λ myZipWith (,) [1,2,3] ""
[]
λ myZipWith (,) [1,2,3] "asljkd"
[(1,'a'),(2,'s'),(3,'l')]
λ myZipWith (+) [1,2,3] [10..]
[11,13,15]
```

## Linting

```console
hlint Zipping.hs
```
