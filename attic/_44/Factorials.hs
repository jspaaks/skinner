module Page044_Factorials where

factorial num
  | num <= 1 = 1
  | otherwise = factorial (num - 1) * num
