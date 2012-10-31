module Main where

import Numeric (showIntAtBase)
import Data.Char (intToDigit)

main :: IO ()
main = print $ sum [x | x <- [1..999999], (show x) == (reverse $ show x), (showIntAtBase 2 intToDigit x "") == (reverse $ showIntAtBase 2 intToDigit x "")]
