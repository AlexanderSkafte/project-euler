-- Project Euler
-- Problem 2: Even Fibonacci numbers

fib :: Integral a => (a, a) -> (a, a)
fib (a, b) = (b, a + b)

main = print
     . sum
     . filter even
     . takeWhile (< 4000000)
     . map fst
     $ iterate fib (0, 1)

