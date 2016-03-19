-- Project Euler
-- Problem 22: Names scores

import Data.Char (ord)
import Data.List (sort)
import Data.List.Split
import System.IO

-- The F# pipe operator
(|>) :: a -> (a -> b) -> b
x |> f = f x

main = do
    handle <- openFile "p022_names.txt" ReadMode
    contents <- hGetContents handle
    print $ magic contents
    hClose handle

magic :: String -> Int
magic str = str
           |> filter (\c -> c /= '"')
           |> splitOneOf ","
           |> sort
           |> enumerate
           |> map nameScore
           |> sum

enumerate :: [String] -> [(Int, String)]
enumerate = zipWith (\num str -> (num, str)) [1..]

nameScore :: (Int, String) -> Int
nameScore (num, str) = num * (strValue str)

strValue :: String -> Int
strValue str = sum . map (\c -> ord c - ord 'A' + 1) $ str

