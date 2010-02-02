
import List
import Lib

main = print $ (sort $ map number $ permutation [0..9]) !! (1000000 -1)


number :: [Integer] -> Integer
number []     = 0
number (x:xs) = x * 10 ^ (length $ xs) + number xs
