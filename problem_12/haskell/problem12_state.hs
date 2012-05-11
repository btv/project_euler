{-# LANGUAGE BangPatterns, UnboxedTuples #-}
module Main where

import Control.Monad
import Control.Monad.State

type MyState = (Int, Int)
s0 = (7, 28)

tick = do
    (n,o) <- get
    let divs = getDivLen (n,o)
    if divs <= 500
        then do
            let n' = n + 1
            let o' = o + n'
            put (n', o')
            tick
        else
            return o

getDivLen :: MyState -> Int
getDivLen (!n, !o) = foldl1 (+) [2 | x <- [1..x], o `mod` x == 0]
    where x = round . sqrt $ fromIntegral o

main :: IO ()
main = print $ evalState tick s0
