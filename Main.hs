module Main
where
import Data.Char

change [] = []
change [x] = [x]
change list =
    [head(reverse list)] ++ tmp ++ [head(list)] 
    where tmp = tail(reverse(tail(reverse list)))

main = do
    strin<-getLine
    putStrLn.change $ strin
