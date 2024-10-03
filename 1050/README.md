# `1050/ExploringUndefined.hs`

`sumConvoluted` takes a list of list of Int, then for each list determines
(1)which element is the minimum and multiplies it by the number of its occurrences,
(2) which element is the maximum and multiplies it by the number of its occurrences.
The outcome of 1 is then subtracted from the outcome of 2. The final result is
a string of these differences, separated by commas.

## Interactive

```console
$ ghci
```
```haskell
GHCi, version 9.4.8: https://www.haskell.org/ghc/  :? for help
λ :load ExploringUndefined.hs
[1 of 1] Compiling ExploringUndefined             ( ExploringUndefined.hs, interpreted )
Ok, one module loaded.
λ sumConvoluted [[5,5,1], [5,1,1], [1..10], [5]]
"9,3,9,0"
```

## Linting

```console
hlint ExploringUndefined.hs
```
