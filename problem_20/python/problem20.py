#!/usr/bin/python
"""
solution for problem 20 in python.
"""
from math import factorial

#taken from problem 8
def int_to_list(number):
    return [int(digits) for digits in str(number)]

number = factorial(100)

print(sum(int_to_list(number)))
