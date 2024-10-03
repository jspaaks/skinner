# `0770/InfiniteFind.hs`

## Interactive

```console
$ ghci
GHCi, version 9.4.8: https://www.haskell.org/ghc/  :? for help
```
```haskell
λ :load InfiniteFind.hs
[1 of 1] Compiling InfiniteFind             ( InfiniteFind.hs, interpreted )
Ok, one module loaded.
λ sumtotal1 [1..3]
6
λ sumtotal2 [1..3]
6
λ findFirst (>5) [1..9]
[6]
λ findFirst (>15) [1..9]
[]
```

## Linting

```console
hlint InfiniteFind.hs
```
