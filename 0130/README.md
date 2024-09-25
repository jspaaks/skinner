# `0130/Greeting.hs`

## Interactive

```console
$ cd 0130
$ ghci
GHCi, version 9.4.7: https://www.haskell.org/ghc/  :? for help
Loaded GHCi configuration from /home/nlesc/.config/ghc/ghci.conf
λ :l Greeting.hs 
[1 of 2] Compiling Main             ( Greeting.hs, interpreted )
Ok, one module loaded.
λ main
"No salutation to show yet."
λ makeGreeting "Hello" "George"
"Hello, George"
```

## Linting

```console
hlint Greeting.hs
```
