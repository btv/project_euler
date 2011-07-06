#!/usr/bin/python
"""
Python based code solution to problem 10 of project euler.
"""
import math

def is_prime(divided):
  divisor = 3
  sqrt_divided = int(math.sqrt(divided))
  while divisor <= sqrt_divided:
    if divided % divisor == 0:
      return False

    divisor += 2

  return True

if __name__ == "__main__":
  print sum([2] + [x for x in xrange(3,2000000+1, +2) if is_prime(x)])
