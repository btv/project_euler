#!/usr/bin/python
"""
Python based code solution to problem 10 of project euler.
"""
import math

# code copied from problem 3
def is_prime(divided):
  divisor = 3
  sqrt_divided = math.sqrt(divided)
#  if divided == 1:
#    return True
#  else:
  while divisor <= sqrt_divided:
    if divided == divisor:
      return True
    elif divided % divisor == 0:
      return False
    else:
      divisor += 2

  return True

def main():
  prime_list = filter(is_prime, range(3,2000000+1, +2))
  print sum(prime_list)


if __name__ == "__main__":
  main()
