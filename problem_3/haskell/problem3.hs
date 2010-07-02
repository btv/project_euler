module Main where

import Data.List
import Data.Tuple

zero_mod divisor
  | divide == 0 = True 
  | otherwise = False
  where divide = mod 600851475143 divisor

--prime :: Integer -> Integral -> Bool
prime divisor divided
  | divided == 1 = True
  | divisor >= sqrt_divided = True
  | mod divided divisor == 0 = False
  | otherwise = next_prime
  where next_prime = prime (divisor + 2) divided
        sqrt_divided = round . sqrt . fromIntegral $ divided

is_prime :: Integer -> Bool
is_prime input = prime 3 input

main :: IO ()
main = do
       let sqrt_top = round . sqrt . fromIntegral $ 600851475143
       let x = filter zero_mod [1..sqrt_top]
       let y = map is_prime x
       putStrLn $ show $ snd $  maximum ( zip y x)
