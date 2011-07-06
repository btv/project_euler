module Main where

prime_wrapper:: Int -> [Int]
prime_wrapper divided = prime 3 divided (round . sqrt. fromIntegral $ divided)

prime:: Int -> Int -> Int -> [Int]
prime divisor divided sqrt_divided
  | divisor > sqrt_divided = [divided]
  | mod divided divisor == 0 = []
  | otherwise = next_prime
  where next_prime = prime (divisor + 2) divided sqrt_divided

main :: IO ()
main = print $ sum primes 
  where primes = 2 : [ x | x <- [3,5..2000000],  prime_wrapper x /= [] ]
