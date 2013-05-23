#!/usr/bin/python
"""
solution for problem 20 in python.
"""
from operator import mul
from functools import reduce

#taken from problem 8
def int_to_list(number):
    return [int(digits) for digits in str(number)]

number = reduce(mul, range(1,101))

print(sum(int_to_list(number)))
