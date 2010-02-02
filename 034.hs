import Lib

main = print $ sum $ filter (\x -> x == (digitsFactorialSum x)) [3..1000000]

digitsFactorialSum :: Integer -> Integer
digitsFactorialSum n = sum $ map (factorial . toInteger) $ digits n