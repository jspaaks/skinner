module Factorials
  where
    factorial n
      | n > 1 = n * factorial (n - 1)
      | otherwise = 1
