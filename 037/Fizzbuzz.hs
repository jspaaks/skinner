module Fizzbuzz
  where
    f n
      | n `rem` 15 == 0 = "fizzbuzz"
      | n `rem` 5 == 0 = "buzz"
      | n `rem` 3 == 0 = "fizz"
      | otherwise = show n
    fizzbuzz n = putStr $ unlines $ map f [1..n]
