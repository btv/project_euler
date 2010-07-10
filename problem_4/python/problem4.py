#!/usr/bin/python

def int_to_list(number):
  return map(int, str(number))

def is_palindrome(number):
  local_list = int_to_list(number)
  return local_list == list(reversed(local_list))

def is_palindrome2(number):
  return str(number) == str(number)[::-1]

if __name__ == "__main__":
  print "%s" % max([x * y for x in range(1000,100, -1) \
                          for  y  in range(1000,100,-1) \
                          if is_palindrome(x * y)])
