module Fibonacci where
    help = putStrLn "-- Module Fibonacci"

    -- not lazy
    fib n
        | n == 0 = 0
        | n == 1 = 1
        | otherwise = (fib $ n - 1) + (fib $ n - 2)

    -- streaming version of fib
    fibstream1 = map fib [0..]

    -- streaming version of fib, lazy
    fibstream2 a b = a : fibstream2 b (a + b)

    -- streaming version of fib, lazy
    fibstream3 = 0 : 1 : helper fibstream3 (tail fibstream3) where
        helper (a:as) (b:bs) = a + b : helper as bs
