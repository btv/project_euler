divisible_1_to_20 n
  | mod n 20 /= 0 = False
  | mod n 19 /= 0 = False
  | mod n 18 /= 0 = False
  | mod n 17 /= 0 = False
  | mod n 16 /= 0 = False
  | mod n 15 /= 0 = False
  | mod n 14 /= 0 = False
  | mod n 13 /= 0 = False
  | mod n 12 /= 0 = False
  | mod n 11 /= 0 = False
  | otherwise = True


problem5 = until (divisible_1_to_20) (+2) 2520
