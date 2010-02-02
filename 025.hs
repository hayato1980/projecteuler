import Lib

main = print $ (1+) $ length $ takeWhile (< 10 ^ 999) $ fib
