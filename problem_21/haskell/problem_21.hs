module Main where

import Math.NumberTheory.Primes.Factorisation (divisors)
import Data.Set (toList)

sumOfDivisors :: Integer -> Integer
sumOfDivisors 0 = 0
sumOfDivisors num = sum . init . toList . divisors $ num

isOK :: Integer -> Bool
isOK x = if x /= y
         then x == z
         else False
    where y = sumOfDivisors x
          z = sumOfDivisors y

main :: IO ()
main = print . sum $ filter (isOK) [1..9999]
