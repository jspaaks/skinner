module ConcatMap where

    TODO

    mycat xss  = foldl (<>) [] xss

    mymap f xs
        | null xs   = []
        | otherwise = f (head xs) : mymap f (tail xs)

    g acc elem = mymap f

    myConcatMap f xss = foldl (mymap f) [] xss
