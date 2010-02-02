
import Char

allDigit :: Integer -> [Integer]
allDigit n = map (toInteger . digitToInt) $ show n

answer :: Integer
answer = sum $ allDigit (2 ^ 1000)

main :: IO ()
main = putStrLn $ show $ answer