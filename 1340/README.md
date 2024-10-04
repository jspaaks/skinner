# `1340/PolyMorphicSumTypes.hs`

## Interactive

```console
$ ghci
```
```haskell
GHCi, version 9.4.7: https://www.haskell.org/ghc/  :? for help
Loaded GHCi configuration from /home/nlesc/.config/ghc/ghci.conf
λ :l PolyMorphicSumTypes
[1 of 1] Compiling PolyMorphicSumTypes ( PolyMorphicSumTypes.hs, interpreted )
Ok, one module loaded.
λ :{
┣ george :: Person = Customer $ CustomerProps
┣   { customerName = "El gringo"
┣   , customerBalance = 2456
┣   }
┣ 
┣ porter :: Person = Employee $ EmployeeProps
┣   { employeeName = "Porter P. Pupper"
┣   , employeeManagerName = "Remi"
┣   , employeeSalary = 26
┣   }
┣ :}
λ 
λ personName george
"El gringo"
λ personName porter
"Porter P. Pupper"
λ ms :: Maybe String = personManagerName porter
λ printMaybeString ms
"Remi"
λ mi :: Maybe Int = personBalance george
λ printMaybeInt mi
2456
λ mi :: Maybe Int = personSalary porter
λ printMaybeInt mi
26
```

## Linting

```console
hlint PolyMorphicSumTypes.hs
```

<!--

george :: Person = Customer $ CustomerProps
  { customerName = "El gringo"
  , customerBalance = 2456
  }

porter :: Person = Employee $ EmployeeProps
  { employeeName = "Porter P. Pupper"
  , employeeManagerName = "Remi"
  , employeeSalary = 26
  }
:}

-->