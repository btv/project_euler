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
  count = 1 #to substitute the prime number 2 in the example
  last = 0
  iterator = 3

  while count < 10001:
    if is_prime(iterator):
      count += 1
      last = iterator

    iterator += 2

  print(last)
