-- Project Euler
-- Problem 20: Factorial digit sum

import Data.Char (digitToInt)
import Data.List (foldl1')

factorial :: Integral a => a -> a
factorial n = foldl1' (*) [1..n]

main = print . sum . map digitToInt . show $ factorial 100

