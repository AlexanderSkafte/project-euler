-- Project Euler
-- Problem 10: Summation of primes

import Data.Numbers.Primes (primes) -- cabal install primes

main = print . sum $ takeWhile (< 2000000) primes

