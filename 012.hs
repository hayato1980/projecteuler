
import Lib

main = print $ head $ filter (\x -> (length $ divisors $ x) >= 501) triangle
