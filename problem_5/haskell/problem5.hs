module Main where

import Data.List

divisible_1_to_20 number = 10 == (length $ unfoldr(\x -> if (snd $ quotRem number x) /= 0 || x < 11
				                                                 then Nothing
			                                                   else Just(x,x - 1)) 20)

-- http://basildoncoder.com/blog/2008/06/10/project-euler-problem-5/
-- by increaing the loop from 2 to 2520, problem solves in seconds
main :: IO ()
main = print $ until (divisible_1_to_20) (+2520) 2520
