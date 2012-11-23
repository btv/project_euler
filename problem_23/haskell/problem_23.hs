
--module Main where

import Math.NumberTheory.Primes.Factorisation (divisors)
import Data.Set (fromList,toList)


getAllSums :: [Int] -> [Int]
getAllSums = toList . fromList . getAllSums'

getAllSums' :: [Int] -> [Int]
getAllSums' [] = []
getAllSums' (x:xs) = map (x +) xs ++ getAllSums xs



--main :: IO ()
--main = print . sum . filter () [1..28123]
--let x = map (\y -> fromIntegral y :: Int) $ filter (\x -> x < (sum . init . toList $ divisors x)) [1..1000]
--
