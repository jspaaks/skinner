module PolyMorphicSumTypes where

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

    printMaybeInt :: Maybe Int -> IO ()
    printMaybeInt (Just x) = print x
    printMaybeInt Nothing = undefined

    printMaybeString :: Maybe String -> IO ()
    printMaybeString (Just x) = print x
    printMaybeString Nothing = undefined

    personName :: Person -> String
    personName person = case person of
        Customer customerProps -> customerName customerProps
        Employee employeeProps -> employeeName employeeProps

    personManagerName :: Person -> Maybe String
    personManagerName person = case person of
        Employee employeeProps -> Just $ employeeManagerName employeeProps
        _                      -> Nothing

    personBalance :: Person -> Maybe Int
    personBalance person = case person of
        Customer customerProps -> Just $ customerBalance customerProps
        _                      -> Nothing

    personSalary :: Person -> Maybe Int
    personSalary person = case person of 
        Employee employeeProps -> Just $ employeeSalary employeeProps
        _                      -> Nothing

