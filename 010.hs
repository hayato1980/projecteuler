import Lib

answer = sum $ takeWhile (<= 2000000) primes

main = putStrLn . show $ answer