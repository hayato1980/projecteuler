
main = print $ answer 200 [1,2,5,10,20,50,100,200]

answer :: Int -> [Int] -> Int
answer 0 _     = 1
answer x coins = sum $ map use coins
           where
             use coin | x < coin  = 0
                      | otherwise = answer (x-coin) (filter (<= coin) coins)