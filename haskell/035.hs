-- Project Euler
-- Problem 35: Circular primes

import Data.Char (digitToInt)
import Data.List (all)

-- Rotation is WRONG!!!!!
-- Rotation is WRONG!!!!!
-- Rotation is WRONG!!!!!
-- Rotation is WRONG!!!!!
-- Rotation is WRONG!!!!!

main = print
     . length
     . filter isCircularPrime
     $ filter isPrime [2..999999]

{-
isCircularPrime n = let r0 = n
                        r1 = (rotateInt 1) r0
                        r2 = (rotateInt 1) r1
                    in all ((==) True) (map isPrime [r0, r1, r2])
-}

isPrime k = null [ x | x <- [2 .. k `div` 2], k `mod` x  == 0]

rotate :: Int -> [a] -> [a]
rotate n xs = (last xs) : (init xs)

rotateInt :: Int -> Int -> Int
rotateInt n x = read (rotate n (show x)) :: Int

{-
isCircularPrime n = let r0 = n
                        r1 = (rotateInteger 1) r0
                        r2 = (rotateInteger 1) r1
                    in   (sum . digits) r0 == (sum . digits) r1
                      && (sum . digits) r1 == (sum . digits) r2

digits :: Integer -> [Int]
digits = (map digitToInt) . show
-}

{-
primes :: [Integer]
primes = sieve [2..]
           where
             sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p > 0]
-}


