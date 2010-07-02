#!/usr/bin/python
"""
solution for problem 20 in python.
"""

print sum([int(i) for i in str(reduce(lambda x, y: x * y, range(1,100+1)))])
