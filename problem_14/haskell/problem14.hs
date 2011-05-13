module Main where

import Data.List

--NOTES: change from retuning the list to just the lengh,
-- Also include the starting number.


chain' :: Integer -> [Integer]
chain' 1 = [1]
chain' n
  | n <= 0 = []
  | even n = n : chain' (n `div` 2)
  | odd n = n : chain' (n * 3 + 1)

main :: IO ()
main = do
    let seqx = map chain' [3,5..1000000]
    let lengthx = map length seqx
    print . maximum $ zip lengthx seqx
