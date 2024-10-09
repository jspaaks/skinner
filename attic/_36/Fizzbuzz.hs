module Page036 where

guardSize num
  | num < 3 =
    let size = "small"
    in exclaim size
  | num < 100 = exclaim "medium"
  | otherwise = exclaim "large"
  where exclaim word = print $ "That is a " <> word <> " number!"


fizzbuzz num
  | mod num 3 == 0 && mod num 5 == 0 = "fizzbuzz"
  | mod num 5 == 0 = "buzz"
  | mod num 3 == 0 = "fizz"
  | otherwise = show num


fizzbuzzRecursiveFunIfElse num last s =
  if num > last
  then s
  else
    let num' = num + 1
        s' = s <> fizzbuzz num <> " "
    in fizzbuzzRecursiveFunIfElse num' last s'


fizzbuzzRecursiveFunGuards num last s
  | num <= last = fizzbuzzRecursiveFunGuards num' last s'
  | otherwise = s
  where
    num' = num + 1
    s' = s <> fizzbuzz num <> " "
