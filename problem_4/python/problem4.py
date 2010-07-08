#!/usr/bin/python

def int_to_list(number):
  return map(int, str(number))

def is_palindrome(number):
  local_list = int_to_list(number)
  return local_list == list(reversed(local_list))

if __name__ == "__main__":
  second_list = first_list = range(100,1000+1)
  first_list.reverse()
  second_list.reverse()
  prod_set = set(map(lambda i,j: i*j, first_list, second_list))


  print "%s" % max(filter(is_palindrome,prod_set))
