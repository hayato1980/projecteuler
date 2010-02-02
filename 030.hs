import Control.Monad.List
import List
import Char

answerMatch :: Integer -> Bool
answerMatch x = x == (sum $ map ((^5) . toInteger . digitToInt) $ show x)

main = print $ sum $ filter answerMatch [2..1000000]