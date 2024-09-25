# `012/Greeting.hs`

## Interactive

```console
$ cd 012
$ ghci
GHCi, version 9.4.8: https://www.haskell.org/ghc/  :? for help
λ :load Greeting.hs
[1 of 2] Compiling Main             ( Greeting.hs, interpreted )
Ok, one module loaded.
λ main
Hello, world!
```

## Compiled

```console
$ cd 012
$ ghc Greeting.hs
[1 of 2] Compiling Main             ( Greeting.hs, Greeting.o )
[2 of 2] Linking Greeting
$ ./HelloWorld
Hello, world!
```

## Linting

```console
hlint Greeting.hs
```
