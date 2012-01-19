module Main where

get_div_len number = foldr (+) 0 [2 | x <- [1..x], number `mod` x == 0]
    where x = toInteger . round . sqrt $ fromInteger number

main :: IO()
main = do
  print $ map (\x -> (get_div_len x ,x)) xs
  where xs = map (\x -> sum [1..x]) [7..]
