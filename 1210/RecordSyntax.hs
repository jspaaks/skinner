module RecordSyntax where
    help = putStrLn "-- Module RecordSyntax"

    data Customer = Customer
        { firstName :: String
        , lastName :: String
        , balance :: Int
        }

    getCustomerName :: Customer -> String
    getCustomerName customer = firstName customer <> " " <> lastName customer

    printCustomer :: Customer -> String
    printCustomer customer = getCustomerName customer <> ": " <> (show $ balance customer)
