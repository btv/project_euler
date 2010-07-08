module Main where

import Data.List

--Stole numberToList code from:
--http://www.rhinocerus.net/forum/lang-functional/95473-converting-number-list-haskell.html
numberToList = reverse . unfoldr (\x -> if x == 0 then Nothing else let (a,b) = x `quotRem` 10 in Just (b,a))

is_palimdrome number = num_list == reverse num_list
  where
    num_list = numberToList number

main :: IO ()
main = print . maximum . filter is_palimdrome $ zipWith (*) y z
  where y = [1000,999..100]
        z = [1000,999..100]
