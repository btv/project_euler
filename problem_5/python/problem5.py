#!/usr/bin/python

def div_1_to_20(divided):
  divisor = 20
  while( divisor >= 11):
    if( divided % divisor != 0):
      return False

    divisor -= 1
  
  return True


def main():
  count = 2520
  while div_1_to_20(count) == False:
    count += 2520

  print "%s" % count


if __name__ == "__main__":
  main()

