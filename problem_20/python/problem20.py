#!/usr/bin/python
"""
solution for problem 20 in python.
"""
from operator import mul

#taken from problem 8
def int_to_list(number):
    return [int(digits) for digits in str(number)]

number = reduce(mul, xrange(1,101))

print(sum(int_to_list(number)))
