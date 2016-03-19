-- Project Euler
-- Problem 6: Sum square difference

sumOfSquares n = sum $ map (^2) [1..n]
squareOfSums n = (^2) $ sum [1..n]

main = print $ abs $ (sumOfSquares 100) - (squareOfSums 100)

