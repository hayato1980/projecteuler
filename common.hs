
module Lib where
import List
import Char

-- 自らを含む約数
divisors :: (Integral a) => a -> [a]
divisors num = divisors' num [1..num]
    where
      divisors' _ [] = []
      divisors' n (x:xs)
	  | n < x * x      = []
	  | n `mod` x == 0 = x:(n `div` x):divisors' n xs
          | otherwise      = divisors' n xs

-- 順列
permutation :: Eq a => [a] -> [[a]]
permutation [] = [[]]
permutation xs = concat [map (x:) $ permutation (delete x xs) | x <- xs]

-- フィボナッチ数列
fib :: [Integer]
fib = 1:1:[x+y | (x,y) <- zip fib (tail fib)]

-- 
factorize :: Integer -> [Integer] -> [Integer]
factorize n (c:cs) | n < c * c       = [n]
                   | n `mod` c == 0  = c:factorize (n `div` c) (c:cs)
                   | otherwise       = factorize n cs

-- 因数分解
factor :: Integer -> [Integer]
factor n = factorize n (2:[3,5..])

-- 素数列
primes :: [Integer]
primes = 2:f [3] [3,5..]
    where f (x:xs) ys = let (ps, qs) = span (< x^2) ys
                        in  ps ++ f (xs ++ ps) [z | z <- qs, mod z x /= 0]

-- 数値を各桁の数のリストに変換
digits :: Integral a => a -> [Int]
digits x = map digitToInt $ show x

-- 階乗
factorial :: Integer -> Integer
factorial 0 = 1
factorial 1 = 1
factorial n = foldl1 (*) [1..n]

-- 三角数
triangle :: [Integer]
triangle = scanl1 (+) [1..]
--triangle = 1:3:zipWith (\x y -> y*2-x+1)  triangle (tail triangle)

-- 五角数
pentagon :: [Integer]
pentagon = map (\x -> x*(3*x-1) `div` 2) [1..]


-- 六角数
hexagon :: [Integer]
hexagon = map (\x -> x*(2*x-1)) [1..]

sortedIntersect :: (Ord a) => [a] -> [a] -> [a]
sortedIntersect []     ys      = ys
sortedIntersect xs      []     = xs
sortedIntersect (x:xs) (y:ys) | x == y = x:(sortedIntersect xs ys)
                              | x <  y = sortedIntersect xs (y:ys)
                              | x >  y = sortedIntersect (x:xs) ys


nextOf :: (Eq a) => a -> [a] -> a
nextOf _ [] = error "empty list"
nextOf x ys = (dropWhile (/= x) ys) !! 1


-- 文字列処理

splitBy :: (a -> Bool) -> [a] -> [[a]]
splitBy p [] = []
splitBy p xs = a : (splitBy p $ dropWhile p $ b)
    where
      (a, b) = break p xs
 
 
splitBySpace :: String -> [String]
splitBySpace = splitBy isSpace
