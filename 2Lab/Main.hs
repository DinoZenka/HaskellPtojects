module Main
where
import Data.Char

getAverage::[Double]->Double->Double->Double
getAverage [] n s = s/n
getAverage (x:xs) n s = getAverage xs (n+1.0) (s+x)

getArray::[Double]->[Double]
getArray [] = [0]
getArray nums =
    filter( < average ) nums
    where average = getAverage nums 0.0 0.0

main = do
    strin<-getLine
    putStrLn.show.getArray.map read.words $ strin 
