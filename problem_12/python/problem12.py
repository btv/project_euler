#!/usr/bin/python

"""
solution for problem 12 in python.
"""
import math

def get_divisors(number):
    tlist = []
    for x in xrange(2, int(math.sqrt(number))):
        d,r = divmod(number,x)
        if r == 0:
            tlist.append(x)
            tlist.append(d)

    return len([1, number] + tlist)

def triangle_nums():
    iterator = 7
    num = 28

    while True:
        yield num
        iterator += 1
        num += iterator

if __name__ == "__main__":
    tn = triangle_nums()
    for t in tn:
        tl = get_divisors(t)
        if tl > 500:
            print "num: %d\ncount: %d" % (t,tl)
            break
