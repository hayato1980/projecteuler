
import Data.Function
import Data.List

collatz :: Integer -> [Integer]
collatz 1 = [1]
collatz　n | even n     = n:(collatz (n `div` 2))
           | otherwise  = n:(collatz (3*n+1))

main = print $ maximumBy (compare `on` (length . collatz)) [1..999999]
