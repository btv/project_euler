module Main where

import Control.Parallel.Strategies

factors count top_number
  | count >= top_number = []
  | zero_mod count = count : new_top: factors (count + 2) new_top
  | otherwise = factors (count + 2) top_number
  where new_top = top_number `div` count

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
main = print . snd . maximum $ zip y x
  where x = factors 3 600851475143
        y = parMap rwhnf  is_prime x
