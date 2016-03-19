-- Project Euler
-- Problem 4: Largest palindrome product

palindrome :: Integer -> Bool
palindrome n = show (abs n) == reverse (show (abs n))

main = print
     . maximum
     $ filter palindrome [x * y | x <- [100..999], y <- [100..999]]

