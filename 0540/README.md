# `0540/Reduce.hs`

## Interactive

```console
$ ghci
GHCi, version 9.4.8: https://www.haskell.org/ghc/  :? for help
```
```haskell
λ :load Reduce.hs
[1 of 1] Compiling Reduce             ( Reduce.hs, interpreted )
Ok, one module loaded.
λ balanceParens 0 '%'
0
λ balanceParens 0 '('
1
λ balanceParens 0 ')'
-1
λ balanceParens 10 ')'
9
λ reduce balanceParens 0 "(abc)defgh)"
-1
```

## Linting

```console
hlint Reduce.hs
```
