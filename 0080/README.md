# `0070/HelloWorld.hs`

## Interactive

```console
$ ghci
GHCi, version 9.4.8: https://www.haskell.org/ghc/  :? for help
λ :load HelloWorld.hs
[1 of 2] Compiling Main             ( HelloWorld.hs, interpreted )
Ok, one module loaded.
λ main
Hello, world!
```

## Compiled

```console
$ ghc HelloWorld.hs
[1 of 2] Compiling Main             ( HelloWorld.hs, HelloWorld.o )
[2 of 2] Linking HelloWorld
$ ./HelloWorld
Hello, world!
```
