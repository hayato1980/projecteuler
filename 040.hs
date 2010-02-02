
import Char

questionNumberString :: String
questionNumberString = concat $ map show [1..]

main = print $ product $ map digitToInt $ map (\x -> questionNumberString !! (x-1)) $ map (10^) [0..6]
