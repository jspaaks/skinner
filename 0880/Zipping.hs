module Zipping where
    help = putStrLn "-- Module Zipping"

    myZipWith f as bs
        | null as = []
        | null bs = []
        | otherwise = f (head as) (head bs) : myZipWith f (tail as) (tail bs)

