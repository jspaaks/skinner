module InfiniteFind where
    myfoldr f acc lst
        | null lst = acc
        | otherwise = f (head lst) $ foldr f acc (tail lst)

    sumtotal1 =
        myfoldr helper 0 where
            helper = (+)

    sumtotal2 =
        myfoldr helper 0 where
            helper elem acc =
                acc + elem

    findFirst predicate =
        myfoldr helper [] where
            helper elem acc
                | predicate elem = [elem]
                | otherwise = acc

