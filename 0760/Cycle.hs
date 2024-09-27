module Cycle where
    radiansToDegrees1 :: Float -> Float
    radiansToDegrees1 radians = 
        360 * radians / 2 / pi

    radiansToDegrees2 :: Float -> Int
    radiansToDegrees2 radians =
        truncate $ (360 * radians / 2 / pi)

    radiansToDegrees3 :: Float -> Int
    radiansToDegrees3 radians =
        (truncate $ (360 * radians / 2 / pi)) `mod` 360

    radiansToDegrees4 :: Float -> Int
    radiansToDegrees4 radians =
        mycycle1 [0..359] !! (truncate $ (360 * radians / 2 / pi))

    mycycle1 lst =
        helper lst where
            helper (x:xs) = x : helper xs  -- recursively append elems of lst
            helper [] = mycycle1 lst        -- restart recursion

    mycycle2 lst =
        lst <> mycycle2 lst  -- append the whole list at once,
                             -- then recurse
