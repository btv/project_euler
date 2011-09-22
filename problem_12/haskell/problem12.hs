--module Main where

get_div_len number = length $ [1,number] ++  [ y | y <- [2..(number - 1)] , number `mod` y == 0]

--triangle num = sum(map digitToInt $ show num)

main :: IO()
main = do
  print $ head [ x | x <- [1..], (get_div_len x) >= 500] 
