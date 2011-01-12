module Main where

main :: IO()
main = print . head $ [a*b*(1000-b-a) | a <- [1..500] , b <- [a..500], a ^ 2 + b ^ 2 == (1000 - b - a) ^ 2]
