module Page045_Fibonacci where

fibonacci num
  | num == 0 = 0
  | num == 1 = 1
  | otherwise = fibonacci (num - 1) + fibonacci (num - 2)
