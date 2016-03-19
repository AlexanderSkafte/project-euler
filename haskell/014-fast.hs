-- Project Euler
-- Problem 14: Longest Collatz sequence

module Main (main, collatz) where

import Data.List (sortBy)
import qualified Data.Vector.Unboxed as U

main = print
     . startNum
     . last
     $ sortBySeqLen tuples

collatz :: Int -> [Int]
collatz start = U.toList . collatz' $ U.singleton start

{- Using Data.Vector.Unboxed -}
collatz' :: U.Vector Int -> U.Vector Int
collatz' xs
    | x == 1 = x `U.cons` xs
    | odd  x = collatz' $ (3 * x + 1) `U.cons` xs
    | even x = collatz' $ (x `div` 2) `U.cons` xs
    where x = U.head xs

tuples :: [(Int, Int)]
tuples = map (\xs -> (last xs, length xs)) [collatz i | i <- [1..999999]]

sortBySeqLen :: [(Int, Int)] -> [(Int, Int)]
sortBySeqLen = sortBy (\t1 t2 -> if (seqLen t1) < (seqLen t2) then LT else GT)

startNum = fst
seqLen = snd


{-
main = print
     . startNum
     . last
     . sortBySeqLen
     $ U.toList tuples

collatz :: Int -> U.Vector Int
collatz start = collatz' $ U.singleton start

collatz' :: U.Vector Int -> U.Vector Int
collatz' (xs)
    | x == 1 = x `U.cons` xs
    | odd  x = collatz' $ (3 * x + 1) `U.cons` xs
    | even x = collatz' $ (x `div` 2) `U.cons` xs
    where x = U.head xs

tuples :: U.Vector (Int, Int)
tuples = U.map (\xs -> (U.last xs, U.length xs)) (U.fromList [collatz i | i <- [1..999999]])

sortBySeqLen :: [(Int, Int)] -> [(Int, Int)]
sortBySeqLen = sortBy (\t1 t2 -> if (seqLen t1) < (seqLen t2) then LT else GT)

startNum = fst
seqLen = snd
-}

