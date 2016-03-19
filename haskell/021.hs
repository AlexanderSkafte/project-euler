-- Project Euler
-- Problem 21: Amicable numbers

main = print . sum $ filter isAmicable [2..9999]

isAmicable :: Int -> Bool
isAmicable n = let
                   sdn  = sum $ divisors n
                   sdn' = sum $ divisors sdn
               in
                   (n == sdn') && (n /= sdn)

divisors :: Int -> [Int]
divisors n = init $ filter (`divides` n) [1..n]

divides :: Int -> Int -> Bool
x `divides` y = y `mod` x == 0


-- Extra function to make pairs from list of amicable numbers.
-- Not needed for the problem.

tuplify :: [a] -> [(a,a)]
tuplify [] = []
tuplify (x1:x2:xs) = (x1,x2):(tuplify xs)

