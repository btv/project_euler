module Main where
-- haskell based solution for problem 20.
import Numeric
import Data.List

-- http://www.rhinocerus.net/forum/lang-functional/
-- 95473-converting-number-list-haskell.html#post539294
numberToList = reverse . unfoldr (\x -> if x == 0 
                                        then Nothing 
                                        else let (a,b) = x `quotRem` 10 in Just (b,a))

main :: IO ()
main = do
       print $ sum $ numberToList (product [1..100])
