#!/usr/bin/python

def is_palindrome(number):
  half = int(.5 * number)
  count = 1

  while count <= half:
    if number[count - 1] != number[-1 * count]:
      return False

    count += 1

  return True


def main():
  first_list = range(100,1000)
  first_list.reverse()

  count1 = 1
  count2= 1
  flag = False

  while flag == False:
    product = int(first_list[count1] * first_list[count2])
    if is_palindrome(product):
      print "%s" % (product)
      flag = True
    else:
      count1 += 1
      if count1 >= 999:
        count2 += 1
        count1 = count2 


if __name__ == "__main__":
  main()
