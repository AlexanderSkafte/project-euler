-- Project Euler
-- Problem 25: 1000-digit Fibonacci number

fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

-- Not complete

