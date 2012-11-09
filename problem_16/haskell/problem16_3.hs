module Main where

import Data.List (unfoldr)
import Data.Maybe

main :: IO ()
main = print . sum . unfoldr (\n -> if n == 0 then Nothing else let (d,r) = divMod n 10 in Just (r,d)) $ 2 ^ 1000
