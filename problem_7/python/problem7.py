#!/usr/bin/python3

import math

def is_prime(divided):
  divisor = 3
  sqrt_divided = math.sqrt(divided)
  while divisor <= sqrt_divided:
    if divided % divisor == 0:
      return False

    divisor += 2
  return True

if __name__ == "__main__":
  prime_list = [2]
  count = 3

  while len(prime_list) < 10001:
    if is_prime(count) == True:
      prime_list.append(count)

    count += 2

  print(prime_list[-1])
