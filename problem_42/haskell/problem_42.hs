module Main (main) where

import Data.Char (ord)
import Data.List (maximum, takeWhile, unfoldr, elem)
import qualified Data.Text as T
import qualified Data.Text.IO as TI (readFile)
import System.Environment (getArgs)

wordSum :: T.Text -> Int
wordSum x = sum $ map (\j -> (ord j) - 64) (T.unpack x)

buildWordList :: FilePath -> IO [[T.Text]]
buildWordList filename = TI.readFile filename >>=
    return . map (T.split (==',') . T.filter (/='"')) . T.lines 

trianagle_nums :: Integral a => a -> [a]
trianagle_nums x = takeWhile (<= x) xs
     where xs = unfoldr (\b -> Just((b * (b + 1)) `div` 2, b + 1)) 1

main :: IO ()
main = do
  words <- getArgs >>= buildWordList . head
  let wordSumList = map (wordSum) (head words)
  let tri_sq = trianagle_nums $ maximum wordSumList
  print . length $ filter (\x -> x `elem` tri_sq) wordSumList
