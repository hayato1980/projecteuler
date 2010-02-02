



main :: IO ()
main = putStrLn $ show $ answer

answer :: Integer
answer = sum [x | x <- [2..10000] , isAmicable x]

isAmicable :: Integer -> Bool
isAmicable x = (x == (sum $ divisions $ sum $ divisions x)) && (not $ isPerfect x)

divisions :: Integer -> [Integer]
divisions n = [x | x <- [1..(n-1)] , n `mod` x == 0] 

isPerfect :: Integer -> Bool
isPerfect x = x == (sum $ divisions x)