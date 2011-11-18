module Main where

get_div_len number = length $ [1,number] ++ [ y | y <- [2..(number - 1)] , number `rem` y == 0]

main :: IO()
main = do
  print . head $ filter (>= 500) [ get_div_len (x ^ 2)  | x <- [2..]]
