#!/usr/bin/python

import math

# code taken from problem 3
def is_prime(divided):
  divisor = 3
  sqrt_divided = math.sqrt(divided)
  while divisor <= sqrt_divided:
    if divided == divisor:
      return True
    elif divided % divisor == 0:
      return False
    else:
      divisor += 2
  return True

if __name__ == "__main__":
  prime_list = [2]
  count = 3

  while len(prime_list) < 10000:
    if is_prime(count) == True:
      prime_list.append(count)

    count += 2

  print prime_list[-1]
