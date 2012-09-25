module Main where

sumOfDivisors :: Int -> Int
sumOfDivisors = sum . divisors
  --divisors grabbed from 
  -- http://stackoverflow.com/questions/1480563/making-a-list-of-divisors-in-haskell
  where divisors n = [x | x <- [1..(n-1)], n `rem` x == 0]
