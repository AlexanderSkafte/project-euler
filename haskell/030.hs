-- Project Euler
-- Problem 30: Digit fifth powers

import Data.Char (digitToInt)

power = 5
limit = 4 * 9^5

main = print
     . sum
     $ filter (\x -> x == f x) [2..limit]
    where
        f :: Int -> Int
        f = sum . map ((^power) . digitToInt) . show

