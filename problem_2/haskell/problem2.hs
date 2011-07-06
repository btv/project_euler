--fibinaci :: (Num a) => a -> a -> [a]
fibinaci a b
  | sum' > 4000000 = []
  | otherwise = sum' : fibinaci b sum'
  where sum' = a + b

problem2 = sum $ filter (even) (fibinaci 0 1)
problem2' = sum $ takeWhile (< 4000000) $ filter (even) $ scanl (\x acc -> x + acc) 0 [1..]
