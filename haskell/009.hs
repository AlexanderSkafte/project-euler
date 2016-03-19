-- Project Euler
-- Problem 9: Special Pythagorean triplet

main = print
     $ head [a * b * sqrt (a^2 + b^2) | a <- [1..332]
                                      , b <- [(a+1)..(999-a)]
                                      , a + b + sqrt (a^2 + b^2) == 1000]


{-
-- A Pythagorean triplet is a set of three numbers a, b and c
-- where a < b < c and a^2 + b^2 = c^2
isPythagoreanTriplet :: Integral a => (a, a, a) -> Bool
isPythagoreanTriplet (a, b, c) = (a*a + b*b == c*c) && a < b && b < c

-- Calculates the sum of a tuple consisting of three numbers
sumTriplet :: Integral a => (a, a, a) -> a
sumTriplet (a, b, c) = a + b + c

-- Calculates the product of a tuple consisting of three numbers
productTriplet :: Integral a => (a, a, a) -> a
productTriplet (a, b, c) = a * b * c

-- Returns whether or not a tuple of three numbers is equal to 1000
eq1000 :: Integral a => (a, a, a) -> Bool
eq1000 triplet = sumTriplet triplet == 1000
-}

{-
main = print
     . productTriplet
     $ head [(a, b, c) | a <- [1..]
                       , b <- [1..]
                       , c <- [1..]
                       , isPythagoreanTriplet (a, b, c)
                       , eq1000 (a, b, c)]
-}

