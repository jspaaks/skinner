# `0160/Composition.hs`

## Interactive

```console
$ cd 0160
$ ghci
GHCi, version 9.4.8: https://www.haskell.org/ghc/  :? for help
λ :load Composition.hs
[1 of 2] Compiling Composition             ( Composition.hs, interpreted )
Ok, one module loaded.
λ addOne 4
5
λ squared $ addOne 4
25
λ timesTwoMinusFive = minusFive . timesTwo
λ timesTwoMinusFive 3
1
```

## Linting

```console
hlint Composition.hs
```
