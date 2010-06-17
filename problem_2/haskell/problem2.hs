--fibinaci :: (Num a) => a -> a -> [a]
fibinaci a b
  | sum' > 4000000 = []
  | otherwise = sum' : fibinaci b sum'
  where sum' = a + b

problem2 = sum $ filter (even) (fibinaci 0 1)
