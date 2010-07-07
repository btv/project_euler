module Main where

import Data.List

--Stole numberToList code from:
--http://www.rhinocerus.net/forum/lang-functional/95473-converting-number-list-haskell.html
--Need to learn about Haskell in order to learn how it works.
numberToList = reverse . unfoldr (\x -> if x == 0 then Nothing else let (a,b) = x `quotRem` 10 in Just (b,a))

numberToList' 0 = []
numberToList' number = mod_num : numberToList remining
  where remining = quot number 10
        mod_num = mod number 10


--main :: IO ()
