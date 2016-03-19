-- Project Euler
-- Problem 5: Smallest multiple

-- Very slow, but correct.

divides :: Integral a => a -> a -> Bool
x `divides` y = y `mod` x == 0

divisibleBy1to20 :: Integral a => a -> Bool
divisibleBy1to20 n = all (`divides` n) [1..20]

-- Fast and correct.
main = print $ foldr1 lcm [1..20]

