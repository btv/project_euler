#!/usr/bin/python3

import math

def is_prime(divided):
  divisor = [3]
  sqrt_divided = int(math.sqrt(divided))
  while divisor[0] <= sqrt_divided:
    if divided % divisor[0] == 0:
      return False

    divisor[0] += 2
  return True


if __name__ == "__main__":
  # using a list to store each int value 
  data = [1,0,3]

  while data[0] < 10001:
    if is_prime(data[2]):
      data[0] += 1
      data[1] = data[2]

    data[2] += 2

  print(data[1])
