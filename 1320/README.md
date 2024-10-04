# `1320/SumTypes.hs`

## Interactive

```console
$ ghci
```
```haskell
GHCi, version 9.4.8: https://www.haskell.org/ghc/  :? for help
λ :load SumTypes.hs 
[1 of 1] Compiling SumTypes         ( SumTypes.hs, interpreted )
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
λ personName george
"El gringo"
λ personName porter
"Porter P. Pupper"
λ printMaybeString $ personManagerName porter
"Remi"
λ printMaybeInt $ personBalance george
2456
λ printMaybeInt $ personSalary porter
26
```

## Linting

```console
hlint SumTypes.hs
```
