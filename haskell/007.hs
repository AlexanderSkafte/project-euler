-- Project Euler
-- Problem 7: 10001st prime

-- Slow, but correct.

primes :: [Integer]
primes = sieve [2..]
           where
             sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p > 0]

main = print $ primes !! 10000

