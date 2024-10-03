# `0800/Fibonacci.hs`

Fibonacci sequence: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, etc

## Interactive

```console
$ ghci
```
```haskell
GHCi, version 9.4.8: https://www.haskell.org/ghc/  :? for help
Loaded GHCi configuration from /home/nlesc/.config/ghc/ghci.conf
λ :load Fibonacci.hs 
[1 of 1] Compiling Fibonacci        ( Fibonacci.hs, interpreted )
Ok, one module loaded.

λ -- use fib to calculate 28th fibonacci number
λ fib 28
317811

λ -- use fib in list comprehension
λ [fib x | x <- [0..28]]
[0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,
6765,10946,17711,28657,46368,75025,121393,196418,317811]

λ -- fibstream1 uses map of fib on infinite list [1..]
λ take 29 $ fibstream1
[0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,
6765,10946,17711,28657,46368,75025,121393,196418,317811]

λ -- fibstream2 uses recursion
λ take 29 $ fibstream2 0 1
[0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,
6765,10946,17711,28657,46368,75025,121393,196418,317811]

λ -- fibstream3 uses recursion and doesn't need any arguments
λ take 29 $ fibstream3
[0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,
6765,10946,17711,28657,46368,75025,121393,196418,317811]
```

## Linting

```console
hlint Fibonacci.hs
```
