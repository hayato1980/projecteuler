import Data.Ratio
import Ratio

main :: IO ()
main = print $ properIrreducibleFraction 8

properIffeducibleFraction :: Integer -> [Rational]
properIrreducibleFraction x = [ n % d | d <- [1..x],n <- [1..d],gcd(n,d) == 1]
