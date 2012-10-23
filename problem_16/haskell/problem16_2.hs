module Main where

import Data.Char

main :: IO ()
main = print . sum $ [ digitToInt x | x <- show (2 ^ 1000)]
