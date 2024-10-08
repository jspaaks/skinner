# `1820`

## Interactive

```console
$ cabal repl
```

```haskell
λ g1 = defaultGreeting
λ formatMessage g1
"Hello Friend!"
λ g2 = defaultGreeting { greetingGetTo = Name "Joseph" }
λ formatMessage g2
"Hello Joseph!"
λ g3 = defaultGreeting { greetingGetFroms = [Name "Mary"], greetingGetTo = Name "Joseph" }
λ formatMessage g3
"Hello Joseph from your friend Mary!"
λ g4 = defaultGreeting { greetingGetFroms = [Name "Mary", Name "Mark"], greetingGetTo = Name "Joseph" }
λ formatMessage g4
"Hello Joseph from your friends Mary and Mark!"
λ g5 = defaultGreeting { greetingGetFroms = [Name "Mary", Name "Mark", Name "Jackie"], greetingGetTo = Name "Joseph" }
λ formatMessage g5
"Hello Joseph from your friends Mary, Mark, and Jackie!"
λ g6 = defaultGreeting { greetingGetFroms = [Name "Mary", Name "Mark", Name "Jackie", Name "Isobel"], greetingGetTo = Name "Joseph" }
λ formatMessage g6
"Hello Joseph from your friends Mary, Mark, Jackie, and Isobel!"
```
