module Page51_Countdown where

countdown n
  | n <= 0 = []
  | otherwise = n : countdown (n - 1)
