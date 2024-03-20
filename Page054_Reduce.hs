module Page54_Reduce where

--isBalanced s = 0 == isBalanced' 0 s
--  where
--    isBalanced' count s
--      | null s = count
--      | head s == '(' = isBalanced' (count + 1) (tail s)
--      | head s == ')' = isBalanced' (count - 1) (tail s)
--      | otherwise = isBalanced' count (tail s)


isBalanced :: [Char] -> Bool
isBalanced s = reduce parensFunc s 0 == 0


parensFunc :: Num a => Char -> a -> a
parensFunc char carried
  | char == '(' = carried + 1
  | char == ')' = carried - 1
  | otherwise = carried


reduce :: (t1 -> t2 -> t2) -> [t1] -> t2 -> t2
reduce func items accumulated
  | null items = accumulated
  | otherwise = reduce func items' accumulated'
  where
    items' = tail items
    accumulated' = func (head items) accumulated


reducerParens :: Num a => [Char] -> a -> a
reducerParens str count
  | null str = count
  | head str == '(' = reducerParens (tail str) (count + 1)
  | head str == ')' = reducerParens (tail str) (count - 1)
  | otherwise = reducerParens (tail str) count


reducerSum :: Num t => [t] -> t -> t
reducerSum items count
  | null items = count
  | otherwise = reducerSum items' count'
  where
    items' = tail items
    count' = count + head items


sumFunc :: Num a => a -> a -> a
sumFunc item carried = carried + item
