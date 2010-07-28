module Main where

main :: IO ()
main = do
       let x = [1..100]
       let sumy = sum $ map (^2) x
       let sumx = (sum x) ^2
       print (sumx - sumy)
