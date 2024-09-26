module Reduce where
    reduce f acc lst =
        if null lst then acc
        else
            let acc' = f acc (head lst)
            in reduce f acc' (tail lst)

    balanceParens acc ch
        | ch == '(' = acc + 1
        | ch == ')' = acc - 1
        | otherwise = acc

