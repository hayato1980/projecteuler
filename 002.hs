import Lib

main = putStrLn $ show $ sum[x|x <- takeWhile (< 4000000) fib , even x]



