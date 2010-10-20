module Main where

get_div_len number = length $ [ x | x <- [1..number] , number % x == 0]

main :: IO()
main = do
  let triangle = 28
  let iterator = 7
