#!/usr/bin/python

def is_palindrome(number):
  half = int(.5 * len(number))
  count = 1

  while count <= half:
    if number[count] != number[-1 * count]:
      return False

    count += 1

  return True
