#!/usr/bin/python

def div_11_to_20(divided):
  divisor = 20
  while( divisor >= 11):
    if( divided % divisor != 0):
      return False

    divisor -= 1
  
  return True


if __name__ == "__main__":
  count = 2520
  while div_11_to_20(count) == False:
    count += 2520

  print "%s" % count
