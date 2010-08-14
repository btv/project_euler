#!/usr/bin/python

import math

# code taken from problem 3
def is_prime(divided):
  divisor = 3
  sqrt_divided = math.sqrt(divided)
  if divided == 1:
    return True
  else:
    while divisor <= sqrt_divided:
      if divided == divisor:
        return True
      elif divided % divisor == 0:
        return False
      else:
        divisor += 2
    return True

if __name__ == "__main__":
  prime_list = [1,2]
  count = 3

  # 2 is the first prime, since we're starting at 1, reducing the search
  # by 1.
  while len(prime_list) < 10000:
    if is_prime(count) == True:
      prime_list.append(count)

    count += 2

  print prime_list[-1]
