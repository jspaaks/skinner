module Destructuring where
    addValues [] = 0
    addValues (first:rest) = first + (addValues rest)

