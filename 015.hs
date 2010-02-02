
roots :: Integer -> Integer -> Integer
roots 0 _ = 1
roots _ 0 = 1
roots x y | x == y    = maximum $ pascalsTriangle (x*2)
          | otherwise = (roots (x-1) y) + (roots x (y-1)) 

pascalsTriangle :: Integer -> [Integer]
pascalsTriangle 0 = [1]
pascalsTriangle x = zipWith (+) (prev ++ [0]) (0:prev)
                    where
                      prev = pascalsTriangle (x-1)

main = print $ roots 20 20
