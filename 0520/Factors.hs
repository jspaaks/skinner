module Factors where
    factorize n = factorize' n 2 where
        factorize' n factor
            | n == 1 = []
            | (n `rem` factor) == 0 = factor : factorize' (n `div` factor) factor
            | otherwise = factorize' n (factor + 1)
