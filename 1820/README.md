# `1820`

## Interactive

```console
$ cabal repl
```

```haskell
Build profile: -w ghc-9.4.7 -O1
In order, the following will be built (use -v for more details):
 - module-examples-0.1.0.0 (lib) (first run)
Preprocessing library for module-examples-0.1.0.0..
GHCi, version 9.4.7: https://www.haskell.org/ghc/  :? for help
Loaded GHCi configuration from /home/nlesc/.config/ghc/ghci.conf
[1 of 1] Compiling HaskellBook.Examples.Introduction.CreatingModules ( src/HaskellBook/Examples/Introduction/CreatingModules.hs, interpreted )
Ok, one module loaded.
λ import HaskellBook.Examples.Introduction.CreatingModules 
λ name = Name "John"
λ nameToString name
"John"
λ salutation = Salutation "Good day"
λ salutationToString salutation
"Good day"
λ :{
┣ greeting = Greeting
┣     { greetingGetSalutation = Salutation "Good day"
┣     , greetingGetTo = Name "John"
┣     , greetingGetFroms = [ Name "Mary"
┣                          , Name "Isobel"
┣                          ]
┣     }
┣ :}
λ salutationToString $ greetingGetSalutation greeting
"Good day"
λ nameToString $ greetingGetTo greeting
"John"
λ map nameToString (greetingGetFroms greeting)
["Mary","Isobel"]
λ formatMessage createGreeting
"Hello Friend!"
λ :{
┣ formatMessage createGreeting
┣     { greetingGetTo = Name "John"
┣     }
┣ :}
"Hello John!"
λ :{
┣ formatMessage createGreeting
┣     { greetingGetTo = Name "John"
┣     , greetingGetFroms = [ Name "Mary" ]
┣     }
┣ :}
"Hello John from your friend Mary!"
λ :{
┣ formatMessage createGreeting
┣     { greetingGetTo = Name "John"
┣     , greetingGetFroms = [ Name "Mary"
┣                          , Name "Mark"
┣                          ]
┣     }
┣ :}
"Hello John from your friends Mary and Mark!"
λ :[
unknown command ':['
use :? for help.
λ :{
┣ formatMessage createGreeting
┣     { greetingGetTo = Name "John"
┣     , greetingGetFroms = [ Name "Mary"
┣                          , Name "Mark"
┣                          , Name "Jackie"
┣                          ]
┣     }
┣ :}
"Hello John from your friends Mary, Mark, and Jackie!"
λ :{
┣ formatMessage createGreeting
┣     { greetingGetTo = Name "John"
┣     , greetingGetFroms = [ Name "Mary"
┣                          , Name "Mark"
┣                          , Name "Jackie"
┣                          , Name "Isobel"
┣                          ]
┣     }
┣ :}
"Hello John from your friends Mary, Mark, Jackie, and Isobel!"
```
