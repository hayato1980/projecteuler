
import Control.Monad (guard)

answer = do
  a <- [1..1000]
  b <- [a..1000]
  let c = 1000 - a - b
  guard $ b < c
  guard $ a^2 + b^2 == c^2
  return (a*b*c,(a,b,c))

main = putStrLn . show . head $  answer