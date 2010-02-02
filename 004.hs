import Control.Monad (guard)

isPalindrome :: Integer -> Bool
isPalindrome n = reverse(show(n)) == show(n)

products :: [Integer] -> [Integer]
products ns = do x <- ns
                 y <- ns
                 guard $ x <= y
                 guard $ isPalindrome $ x * y
                 return $ x * y

answers :: [Integer]
answers = products [100..999]

main = do
  putStrLn . show . maximum $ answers
