#!/usr/bin/python

def int_to_list(number):
  return map(int, str(number))

def is_palindrome(number):
  local_list = int_to_list(number)
  half = int(.5 * len(local_list))
  count = 1

  while count <= half:
    if local_list[count - 1] != local_list[-1 * count]:
      return False

    count += 1

  return True

if __name__ == "__main__":
  first_list = range(100,1000)
  first_list.reverse()

  count1 = count2 = 0
  flag = False

  while flag == False:
    product = first_list[count1] * first_list[count2]
    if is_palindrome(product):
      print "%s" % (product)
      flag = True
      
    count1 += 1
    if count1 >= 900:
      count2 += 1
      count1 = count2 
