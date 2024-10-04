# `1280/SumTypes.hs`

## Interactive

```console
$ ghci
```
```haskell
GHCi, version 9.4.8: https://www.haskell.org/ghc/  :? for help
λ :load SumTypes.hs
[1 of 1] Compiling SumTypes             ( SumTypes.hs, interpreted )
Ok, one module loaded.
λ -- sum type without inhabitants
λ d :: Direction = North
λ state :: EmailState = Sent
λ -- sum types that take data
λ confirmContact (Text "+1-234-567-8900")
"I'll text you at +1-234-567-8900."
λ :{
┣ contacts =
┣     [ Email "me@example.com"
┣     , Text "+1 307 555 0100"
┣     , Mail "1123 S. Road St." "Suite 712" "Examplesville, OH" 98142
┣     ]
┣ :}
λ putStr $ unlines $ map confirmContact contacts
I'll email you at me@example.com.
I'll text you at +1 307 555 0100.
I'll send a letter to your address at 1123 S. Road St. Suite 712 Examplesville, OH 98142.
λ -- confirmContact2 uses pattern matching for just the cityAndState field
λ putStr $ unlines $ map confirmContact2 contacts
I'll email you at me@example.com.
I'll text you at +1 307 555 0100.
I'll send a letter to your address in Examplesville, OH
```

## Linting

```console
hlint SumTypes.hs
```
