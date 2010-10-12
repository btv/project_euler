#!/usr/bin/python
"""
python soltion for project euler problem #9.
"""

import math

def equal1000(a,b,c):
  if a + b + c == 1000:
    return True
  else:
    return False

def pythagorianTriple(a,b):
  """
  if the square root of a^2 + b^2 mod'ed = 0, we have something.
  """
  temp_sqrt = int(math.sqrt(a * a + b * b))
  if temp_sqrt % 1 == 0:
    return (True, temp_sqrt)
  else:
    return (False, 0)


if __name__ == "__main__":
  count_left = 1
  count_right = 1

  flip = True

  while count_right <= 500:
    result = pythagorianTriple(count_left, count_right)
    if result[0] == True:
      if equal1000(count_left, count_right,result[1]) == True:
        print "%d + %d + %d = 1000" % (count_left, count_right, result[1])
        end = True

    if flip == True:
      count_right += 1
      flip = flip ^ 1
    else:
      count_left += 1
      flip = flip ^ 1
