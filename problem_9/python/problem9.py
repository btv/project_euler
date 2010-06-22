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
  temp_sqrt = math.sqrt(a * a + b * b)
  if temp_sqrt % 1 == 0.0:
    return (True, temp_sqrt)
  else:
    return (False, 0)


def main():
  count_left = 1
  count_right = 1

  flip = True
  end = False


  while end == False:
    result = pythagorianTriple(count_left, count_right) 
    if result[1] == True:
      if equal1000(count_left, count_right,result[2]):
        print "%d + %d + %d = 1000" % (count_left, count_right, result[2])
        end = True

    if flip == True:
      count_left += 1
      flip = flip ^ 1
    else:
      count_right += 1
      flip = flip ^ 1



if __name__ == "__main__":
  main()
