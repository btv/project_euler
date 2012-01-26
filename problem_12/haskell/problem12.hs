module Main where

import Control.Monad
import Control.Monad.State

get_div_len number = foldl1 (+) [2 | x <- [1..x], number `mod` x == 0]
    where x = round . sqrt $ fromInteger number

main :: IO()
main = do
  print . head $ dropWhile (\x -> fst x <= 499) (map (\x -> (get_div_len x ,x)) xs)
  where xs = map (\y -> sum [1..y]) [7..]
