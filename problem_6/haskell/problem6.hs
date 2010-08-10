module Main where

main :: IO ()
main = do
       let x = [1..100]
       let sum2 = sum $ map (^2) x
       let sum1 = (sum x) ^2
       print (sum1 - sum2)
