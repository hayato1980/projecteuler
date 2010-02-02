
import Char

main = putStrLn $ show $ answer

answer :: Integer
answer = sum $ allDigit $ product [1..1000]

allDigit :: Integer -> [Integer]
allDigit n = map (toInteger . digitToInt) $ show n
