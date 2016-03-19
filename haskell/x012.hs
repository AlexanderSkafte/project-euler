-- Project Euler
-- Problem 12: Highly divisible triangular number

triangle :: Integral a => a -> a
triangle n = n * (n + 1) `div` 2

factors :: Integral a => a -> [a]
factors n = [x | x <- [1..(n `div` 2)], n `mod` x == 0]

numFactors :: Integral a => a -> Int
numFactors n = length $ factors n

triangleNumbers :: [Integer]
triangleNumbers = [triangle x | x <- [1..]]

main = print . head $ filter (\x -> numFactors x > 500) triangleNumbers

