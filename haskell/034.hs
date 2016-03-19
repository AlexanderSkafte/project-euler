-- Project Euler
-- Problem 34: Digit factorials

import Data.Char (digitToInt)
import Data.List (foldl1')

main = print
     . sum
     $ filter isCuriousNumber [3..limit]

limit = 2540160

isCuriousNumber :: Int -> Bool
isCuriousNumber n = sumFactorialDigits n == n
  where
    sumFactorialDigits :: Int -> Int
    sumFactorialDigits = sum . map (factorial . digitToInt) . show

    factorial :: Integral a => a -> a
    factorial n
        | n < 0     = error "Can't take factorial on integers < 0"
        | n == 0    = 1
        | otherwise = foldl1' (*) [1..n]

