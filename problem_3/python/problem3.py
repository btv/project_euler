#!/usr/bin/python

import math

top_number = 600851475143
sqrt_top = int(math.sqrt(top_number))

def zero_mod(divisor):
  if top_number % divisor == 0:
    return True
  else:
    return False

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

def main():
  first_list = filter(zero_mod, range(3, sqrt_top + 1, 2))
  second_list = map(is_prime, first_list)
  print "%s" % max(zip(second_list, first_list))[-1] 


if __name__ == "__main__":
  main()
