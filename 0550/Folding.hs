module Folding where
    import Prelude hiding (foldl, foldr)
    foldl f acc lst
        | null lst = acc
        | otherwise = foldl f acc' (tail lst) where
              acc' = f acc (head lst)

    foldr f acc lst
        | null lst = acc
        | otherwise = f (head lst) $ foldr f acc (tail lst)
--                    ^^^^^^^^^^^^
--                    partial function application of a function f, only works because
--                    their order is reversed compared to that used in foldl
