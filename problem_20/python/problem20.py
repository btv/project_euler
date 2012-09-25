#!/usr/bin/python
"""
solution for problem 20 in python.
"""
#taken from problem 8
def int_to_list(number):
    return [int(digits) for digits in str(number)]

number = reduce(lambda x, y: x * y, xrange(1,100+1))

print(sum(int_to_list(number)))
