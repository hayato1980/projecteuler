

square :: Num a => a -> a
square n = n * n

answer :: [Integer] -> Integer
answer ns = square(sum ns) - sum (map square ns)

main = putStrLn . show . answer $ [1..100]