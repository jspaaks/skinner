module ExploringUndefined where

    import Data.List (intercalate)

    sumConvoluted :: [[Int]] -> String
    sumConvoluted xss = intercalate "," $ map show $ diff xss where

        diff :: [[Int]] -> [Int]
        diff xss = [ a - b | (a,b) <- zip as bs] where

            -- note: countExtreme only works as expected  for (<) and (>)
            countExtreme :: (Int -> Int -> Bool) -> [Int] -> (Int, Int)
            countExtreme _ [] = undefined
            countExtreme op xs = helper (head xs) (tail xs) where
                helper x [] = (1,x)
                helper x xs = foldl f (1,x) xs where
                    f acc elem
                        | op elem $ snd acc  = (1,elem)
                        | elem == snd acc = (fst acc + 1, snd acc)
                        | otherwise = acc

            f :: (Int, Int) -> (Int)
            f t = fst t * snd t

            countBiggest :: [Int] -> (Int, Int)
            countBiggest = countExtreme (>)

            countSmallest :: [Int] -> (Int, Int)
            countSmallest = countExtreme (<)

            as :: [Int] = map (f . countBiggest) xss
            bs :: [Int] = map (f . countSmallest) xss


