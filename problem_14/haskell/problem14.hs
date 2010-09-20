module Main where

import Data.List

--sequence' :: (Num a) => a -> [a]
sequence' a
  | a == 1 = [1]
  | even a == True = a: sequence' (round . fromIntegral $ div a 2)
  | otherwise = a: sequence' (3 * a + 1)

main :: IO ()
main = do
    let seqx = map sequence' [3,5..1000000]
    let lengthx = map length seqx
    print . maximum $ zip lengthx seqx
