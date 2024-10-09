module HaskellBook.Examples.Introduction.CreatingModules
    ( Name ( Name
           , nameToString
           )
    , Salutation ( Salutation
                 , salutationToString
                 )
    , Greeting ( Greeting
               , greetingGetSalutation
               , greetingGetFroms
               , greetingGetTo
               )
    , formatMessage
    , createGreeting
    ) where

    import Data.List (intercalate)

    data Name = Name { nameToString :: String }
    data Salutation = Salutation { salutationToString :: String }
    data Greeting = Greeting
        { greetingGetSalutation :: Salutation
        , greetingGetFroms :: [Name]
        , greetingGetTo :: Name
        }

    formatMessage :: Greeting -> String
    formatMessage greeting = formatMessageHelper (length $ greetingGetFroms greeting) where
        formatMessageHelper n
            | n == 0    = exclaim $ a
            | n == 1    = exclaim $ unwords [a,b',c]
            | otherwise = exclaim $ unwords [a,b,c]
            where
                a  = basicMessage greeting
                b  = "from your friends"
                b' = init b
                c  = formatFroms $ greetingGetFroms greeting

                basicMessage :: Greeting -> String
                basicMessage greeting' = unwords [d,e] where
                    d = salutationToString $ greetingGetSalutation greeting'
                    e = nameToString $ greetingGetTo greeting'

                exclaim :: String -> String
                exclaim s = s <> "!"

                formatFroms :: [Name] -> String
                formatFroms names = formatFromsHelper (length names) (map nameToString names) where
                    formatFromsHelper :: Int -> [String] -> String
                    formatFromsHelper m names'
                        | m == 0    = ""
                        | m == 1    = head names'
                        | m == 2    = intercalate " and " $ names'
                        | m == 3    = unwords $ zipWith (<>) names' [",", ", and", ""]
                        | otherwise = (head names') <> ", " <> formatFromsHelper (m - 1) (tail names')


    createGreeting :: Greeting
    createGreeting = Greeting
        { greetingGetSalutation = Salutation "Hello"
        , greetingGetFroms = []
        , greetingGetTo = Name "Friend"
        }
