import List

divisional :: [Integer] -> Integer -> Bool
divisional ds n = all p ds
               where
                 p a = n `mod` a == 0

answer :: [Integer] -> Maybe Integer
answer ns = find p [1..]
          where
            p x = divisional ns x

main = do
  putStrLn . show . answer $ [1..20]
-- foldl1 lcm [2..20]