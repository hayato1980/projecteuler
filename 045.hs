import List
import Lib

main = print $ nextOf 40755 $ triangle `sortedIntersect` pentagon `sortedIntersect` hexagon
