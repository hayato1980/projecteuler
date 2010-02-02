
import Lib
import List
import Maybe

main = do contents <- readFile "problem22-names.txt"
          let names = sort $ csvToList contents
          let list = map ((map alphaToInt) . extractDoubleQuote) $ names
          let scores = map (\x -> fst x * snd x) $ zip [1..] (map sum list)
          print $ sum $ scores

alphaToInt :: Char -> Int
alphaToInt c | elem c ['A'..'Z'] = (+) 1 $ fromJust $ elemIndex c ['A'..'Z']
             | otherwise         = error $ "not alphabet:" ++ [c]

extractDoubleQuote :: String -> String
extractDoubleQuote str = tail $ init $ str
 
csvToList :: String -> [String]
csvToList line = splitBy (','==) (chomp line)

chomp :: String -> String
chomp line | last line == '\n' = init line
           | otherwise         = line