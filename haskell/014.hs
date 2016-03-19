-- Project Euler
-- Problem 14: Longest Collatz sequence

module Main (main, collatz) where

import Data.List (sortBy)

main = print
     . startNum
     . last
     $ sortBySeqLen tuples

collatz :: Int -> [Int]
collatz start = collatz' [start]

collatz' :: [Int] -> [Int]
collatz' (x:xs)
    | x == 1 = x:xs
    | odd  x = collatz' $ (3 * x + 1) :x:xs
    | even x = collatz' $ (x `div` 2) :x:xs

tuples :: [(Int, Int)]
tuples = map (\xs -> (last xs, length xs)) [collatz i | i <- [1..999999]]

sortBySeqLen :: [(Int, Int)] -> [(Int, Int)]
sortBySeqLen = sortBy (\t1 t2 -> if (seqLen t1) < (seqLen t2) then LT else GT)

startNum = fst
seqLen = snd

