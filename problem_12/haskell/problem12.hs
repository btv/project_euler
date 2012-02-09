--module Main where

import Control.Monad
import Control.Monad.State

type MyState = (Int,Int)

moveState :: MyState -> State MyState MyState
moveState (i:t) = do
                state <- get
                (i', t') <- return $ getDivLen newt
                put (i', t')
                return state
    where newt = t + (i + 1)

getDivLen num = (num, foldl1 (+) [2 | x <- [1..x], num `mod` x == 0])
    where x = round . sqrt $ fromInteger num

--main :: IO()
--main = --do
  --print . head $ dropWhile (\x -> fst x <= 499) (map (\x -> (get_div_len x ,x)) xs)
  --where xs = map (\y -> sum [1..y]) [7..]
--main = print $ evalState (increment ) (7,28)
