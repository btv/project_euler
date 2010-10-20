#!/usr/bin/python
"""
solution for problem 12 in python.
"""

def get_divisors(number):
  return len([ x for x in xrange(1,number+1) if number % x == 0])

# shaving some computations using the problem as a guide
triangle_num = 28
iterator = 7

while get_divisors(triangle_num) <= 500:
  iterator += 1
  triangle_num += iterator

print triangle_num
