# `0451/Currying.hs`

## Interactive

```console
$ cd 0451
$ ghci
GHCi, version 9.4.8: https://www.haskell.org/ghc/  :? for help
```
```haskell
λ :load Currying.hs
[1 of 1] Compiling Currying             ( Currying.hs, interpreted )
Ok, one module loaded.
λ sumOfTupleElems (3, 4)
7
λ curry sumOfTupleElems 3 4           -- use Haskell's builtin curry
7
λ mycurry sumOfTupleElems 3 4         -- use user implementation mycurry
7
λ addition = mycurry sumOfTupleElems
λ addOne = addition 1                 -- partial function application
λ addTwo = addition 2
λ addOne 1                            -- fully saturated function
2
λ addOne 2
3
λ addOne 3
4
λ addTwo 1
3
λ addTwo 2
4
λ addTwo 3
5
λ sumOfTwoArgs 3 4
7
λ uncurry sumOfTwoArgs (3, 4)
7
λ myuncurry sumOfTwoArgs (3, 4)
7
```

## Linting

```console
hlint Currying.hs
```
