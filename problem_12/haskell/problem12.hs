--module Main where

--import Data.Char

get_div_len number = length $ [ y | y <- [1..number] , number `mod` y == 0]

--triangle num = sum(map digitToInt $ show num)

main :: IO()
main = do
  print $ head [ x | x <- [1..], (get_div_len x) >= 500] 
