-- Project Euler
-- Problem 3: Largest prime factor

-- Slow but works

divides :: Integral a => a -> a -> Bool
x `divides` y = y `mod` x == 0

isPrime :: Integral a => a -> Bool
isPrime n
    | n < 2     = False
    | otherwise = not $ any (\x -> x `divides` n) [2..n-1]

isPrimeFactor :: Integral a => a -> a -> Bool
isPrimeFactor a b = (a `divides` b) && (isPrime a)

primeFactors :: Integral a => a -> [a]
primeFactors n = filter (\x -> isPrimeFactor x n) [1..n]

main = putStrLn . show . last $ primeFactors 600851475143

{-
primes :: [Integer]
primes = sieve [2..]
           where
             sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p > 0]
-}

