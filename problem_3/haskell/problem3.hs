import Data.List

zero_mod divisor
  | divide == 0 = True 
  | otherwise = False
  where divide = mod 600851475143 divisor

prime :: Integer -> Integer -> Bool
prime divisor divided
  | divided == 1 = True
  | divisor== divided= True
  | mod divided divisor== 0 = False
  | otherwise = next_prime
  where next_prime = prime (divisor + 2) divided

is_prime :: Integer -> Bool
is_prime input = prime 3 input
