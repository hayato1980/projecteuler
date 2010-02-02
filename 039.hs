import Control.Monad.List
import List

answer :: [Integer]
answer = do a<-[1..998]
            b<-[a..999]
            c<-[b..1000]
            guard $ c^2 == a^2 + b^2
            let p = a+b+c
            guard $ a+b+c < 1000
            return p

count :: Eq a => [a] -> [(a,Int)]
count xs = map (\ys -> (head ys,length ys)) $ group xs

main = print $ maximumBy (\x y -> compare (snd x) (snd y)) $ count $ sort $ answer
