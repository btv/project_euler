 module Main where
 import Data.Tuple
 import Data.List (sortBy, iterate)
 import Data.Function (on)

 chain' :: Integer -> Int
 chain' n  
     | n < 1 = 0
     | otherwise = length $ (takeWhile ( > 1) $ iterate (\x -> if even x then x `div` 2 else x * 3 + 1) n) ++ [1]

 main :: IO ()
 main = do
     let seqx = map (\x -> (x, chain' x)) [999999,999997..3]
     print . fst . head $ sortBy (flip compare `on` snd) seqx
