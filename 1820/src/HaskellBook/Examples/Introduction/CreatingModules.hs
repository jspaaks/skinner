module HaskellBook.Examples.Introduction.CreatingModules where
    import Data.List (intercalate)

    data Name = Name { nameToString :: String }
    data Salutation = Salutation { salutationToString :: String }
    data Greeting = Greeting
        { greetingGetSalutation :: Salutation
        , greetingGetFroms :: [Name]
        , greetingGetTo :: Name
    }

    formatFroms :: [Name] -> String
    formatFroms names = helper (length names) (map nameToString names) where
        helper :: Int -> [String] -> String
        helper n names'
            | n == 0    = ""
            | n == 1    = head names'
            | n == 2    = intercalate " and " $ names'
            | n == 3    = unwords $ zipWith (<>) names' [",", ", and", ""]
            | otherwise = (head names') <> ", " <> helper (n - 1) (tail names')

    basicGreeting :: Greeting -> String
    basicGreeting greeting = intercalate " " [a,b] where
        a = salutationToString $ greetingGetSalutation greeting
        b = nameToString $ greetingGetTo greeting

    formatMessage :: Greeting -> String
    formatMessage greeting = helper (length $ greetingGetFroms greeting) where
        helper n
            | n == 0    = exclaim $ intercalate " " [a]
            | n == 1    = exclaim $ intercalate " " [a, b', c]
            | otherwise = exclaim $ intercalate " " [a, b, c]
            where
                a  = basicGreeting greeting
                b  = "from your friends"
                b' = init b
                c  = formatFroms $ greetingGetFroms greeting

    exclaim :: String -> String
    exclaim s = s <> "!"

    defaultGreeting :: Greeting
    defaultGreeting = Greeting
        { greetingGetSalutation = Salutation "Hello"
        , greetingGetFroms = []
        , greetingGetTo = Name "Friend"
        }
