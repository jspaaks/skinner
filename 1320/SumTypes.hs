module SumTypes where

    data CustomerProps = CustomerProps
        { customerName :: String
        , customerBalance :: Int
        }

    data EmployeeProps = EmployeeProps
        { employeeName :: String
        , employeeManagerName :: String
        , employeeSalary :: Int
        }

    data Person = Customer CustomerProps | Employee EmployeeProps

    data MaybeString = NoString | SomeString String

    data MaybeInt = NoInt | SomeInt Int

    printMaybeInt :: MaybeInt -> IO ()
    printMaybeInt (SomeInt x) = print x
    printMaybeInt NoInt = undefined

    printMaybeString :: MaybeString -> IO ()
    printMaybeString (SomeString x) = print x
    printMaybeString NoString = undefined

    personName :: Person -> String
    personName person =
        case person of
            Customer customerProps -> customerName customerProps
            Employee employeeProps -> employeeName employeeProps


    personManagerName :: Person -> MaybeString
    personManagerName person =
        case person of
            Customer _customerProps -> NoString
            Employee employeeProps  -> SomeString $ employeeManagerName employeeProps

    personBalance :: Person -> MaybeInt
    personBalance person =
        case person of
            Customer customerProps  -> SomeInt $ customerBalance customerProps
            Employee _employeeProps -> NoInt

    personSalary :: Person -> MaybeInt
    personSalary person =
        case person of 
            Customer _customerProps -> NoInt
            Employee employeeProps  -> SomeInt $ employeeSalary employeeProps
