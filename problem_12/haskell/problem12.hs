--module Main where

import Data.Char

get_div_len number = length $ [ y | y <- [1..top] , number `mod` y == 0]
  where top = triangle number

triangle num = sum(map digitToInt $ show num)

--main :: IO()
--main = do
--  print $ triangle $ head [ x | x <- [1..], (get_div_len x) >= 100] 
