# `1350/ExploringEither.hs`

## Interactive

```console
$ ghci
```
```haskell
GHCi, version 9.4.7: https://www.haskell.org/ghc/  :? for help
λ :l ExploringEither.hs 
[1 of 1] Compiling ExploringEither  ( ExploringEither.hs, interpreted )
Ok, one module loaded.
λ handleMissingRight (Left "problem")
Left "problem"
λ handleMissingRight (Right Nothing)
Left "Missing value"
λ handleMissingRight (Right $ Just 5)
Right 5
λ handleMissingRight (Right $ Just "hello")
Right "hello"
λ 
```

## Linting

```console
hlint ExploringEither.hs
```
