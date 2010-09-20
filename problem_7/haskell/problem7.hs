module Main where

import Data.List

prime divisor divided
  | divisor > sqrt_divided = [divided]
  | mod divided divisor == 0 = []
  | otherwise = next_prime
  where next_prime = prime (divisor + 2) divided
        sqrt_divided = round . sqrt . fromIntegral $ divided

main :: IO ()
main = print $ primes !! 10000
  where primes = 2 : [x | x <- [3,5..],  prime 3 x /= []]
