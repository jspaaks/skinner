# Developer notes

## Installing dev dependencies

Exercises can be bootstrapped from the template (see `/template`) using [Copier](https://copier.readthedocs.io/en/stable/).

```console
pipx install copier
```

Then run 

```console
copier copy <path/to/this/repo's/template> .
```

and answer the questions.


## Formatting

Currently I try to use these rules of thumb

- any indent should be length 4
- indents are spaces-only
- `where` should be trailing
- increase indent level after
    - `where`
    - opening guard clause

e.g.

```haskell
module Factors where
    factorize n = factorize' n 2 where
        factorize' n factor
            | n == 1 = []
            | (n `rem` factor) == 0 = factor : factorize' (n `div` factor) factor
            | otherwise = factorize' n (factor + 1)

```


Note to self, revisit this after chapter on Cabal. Look into:
1. fourmolu https://github.com/fourmolu/fourmolu
1. ormolu https://github.com/tweag/ormolu
1. stylish-haskell https://github.com/haskell/stylish-haskell
1. ~brittany~ unmaintained
1. hindent https://github.com/mihaimaruseac/hindent
1. poli-format https://github.com/polimorphic/poli-format
