# `1210/RecordSyntax.hs`

## Interactive

```console
$ ghci
```
```haskell
GHCi, version 9.4.8: https://www.haskell.org/ghc/  :? for help
λ :load RecordSyntax.hs
[1 of 1] Compiling RecordSyntax             ( RecordSyntax.hs, interpreted )
Ok, one module loaded.
λ john = Customer{firstName = "John", lastName = "the Baptist", balance = -78}
λ getCustomerName john
"John the Baptist"
λ printCustomer john
"John the Baptist: -78"
```

## Linting

```console
hlint RecordSyntax.hs
```
