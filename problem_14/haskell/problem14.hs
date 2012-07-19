
 module Main where

 import Data.Tuple
 import Data.List (sortBy)
 import Data.Function (on)

 chain' :: Integer -> [Integer]
 chain' 1 = [1]
 chain' n
   | n <= 0 = []
   | even n = n : chain' (n `div` 2)
   | odd n = n : chain' (n * 3 + 1)

 main :: IO ()
 main = do
     let seqx = map (\x -> (x, length $ chain' x)) [999999,999997..3]
     print . fst . head $ sortBy (flip compare `on` snd) seqx
