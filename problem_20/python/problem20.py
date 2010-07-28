#!/usr/bin/python
"""
solution for problem 20 in python.
"""
print "%e" % (reduce(lambda x, y: x * y, xrange(1,100+1)))
