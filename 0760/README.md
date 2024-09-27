# `0760/Cycle.hs`

## Interactive

```console
$ cd 0760
$ ghci
GHCi, version 9.4.8: https://www.haskell.org/ghc/  :? for help
```
```haskell
λ :load Cycle.hs
[1 of 1] Compiling Cycle             ( Cycle.hs, interpreted )
Ok, one module loaded.
λ -- Float -> Float, no truncate, no modulus:
λ radiansToDegrees1 (2.25 * pi)
404.99997
λ -- Float -> Int, truncate, no modulus:
λ radiansToDegrees2 (2.25 * pi)
404
λ -- Float -> Int, truncate, modulus:
λ radiansToDegrees3 (2.25 * pi)
44
λ -- example of cycled array using lazy evaluation
λ lazilyEvaled = mycycle1 ['a','b','c']
λ lazilyEvaled !! 4
'b'
λ -- Float -> Int, truncate, cycle instead of modulus
λ radiansToDegrees4 (2.25 * pi)
44
λ [mycycle2 ['_', '_', '8'] !! i | i <- [0..10]]
"__8__8__8__"
```

## Linting

```console
hlint Cycle.hs
```
