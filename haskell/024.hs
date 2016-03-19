-- Project Euler
-- Problem 24: Lexicographic permutations

import Data.List (permutations, sort)

-- The F# pipe operator
(|>) :: a -> (a -> b) -> b
x |> f = f x

main = permutations ['0'..'9']
    |> sort
    |> (!! 999999)
    |> (\s -> read s :: Integer)
    |> print

