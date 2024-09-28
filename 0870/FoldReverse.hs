module FoldReverse where
    help = putStrLn "-- Module FoldReverse"

    myfoldl f acc lst
        | null lst = acc
        | otherwise = myfoldl f acc' (tail lst) where
              acc' = f acc (head lst)

    myfoldr f acc lst
        | null lst = acc
        | otherwise = f (head lst) $ myfoldr f acc (tail lst)

    sumtotall =
        myfoldl helper 0 where
            helper acc hd =
                acc + hd

    sumtotalr =
        myfoldr helper 0 where
            helper hd acc =
                hd + acc

-- concatentation based foldl:
    myreverselcat =
        myfoldl helper [] where
            helper acc hd = (<>) [hd] acc

-- cons based foldl, default cons operator with flipped arg order
    myreverselcons1 =
        myfoldl helper [] where
            helper acc hd = (:) hd acc

-- cons based foldl, default cons operator with flipped arg order
    myreverselcons2 =
        myfoldl f [] where
            f = flip (:)

-- concatentation based foldr:
    myreversercat =
        myfoldr helper [] where
            helper hd acc = (<>) acc [hd]
