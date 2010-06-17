#!/usr/bin/python

def threeorfive(n):
  if ( n % 3 == 0 or n % 5 == 0):
    return True
  else:
    return False

def main():
  first_list = range(1,1000)
  second_list = filter(threeorfive, first_list)
  print "%s" % (sum(second_list))

if __name__ == "__main__":
  main()
