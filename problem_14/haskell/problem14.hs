
--sequence' :: (Integral a) => a -> [a]
sequence' a
  | a == 1 = []
  | even a == True = a: sequence' (round $ ( a / 2))
  | otherwise = a: sequence' (3 * a + 1)
