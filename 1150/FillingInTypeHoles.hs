module FillingInTypeHoles where
    mapApply :: [a -> b] -> [a] -> [b]
    mapApply toApply = concatMap (\input -> map ($ input) toApply)

    example :: [Int] -> String
    example = mapApply [ letter . offsetter | offsetter <- offsetters ] where

        letter :: Int -> Char
        letter n = ['a' .. 'z' ] !! n
    
        offsetters :: [Int -> Int]
        offsetters = [rot13, swap10, rot2Vowels] where
    
            rot13 :: Int -> Int
            rot13 n = (n + 13) `rem` 26
        
            swap10 :: Int -> Int
            swap10 n
                | n <= 10   = n + 10
                | n <= 20   = n - 10
                | otherwise = n
        
            rot2Vowels :: Int -> Int
            rot2Vowels n =
                case n of
                    0 -> 8
                    4 -> 14
                    8 -> 20
                    14 -> 0
                    20 -> 4
                    x -> x
