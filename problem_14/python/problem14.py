#!/usr/bin/python
"""Python solution for Project Euler problem #14."""

from __future__ import print_function

def sequence(number):
    t_num = number
    count = 0

    while(t_num > 1):
        if t_num % 2 == 0:
            t_num /= 2
        else:
            t_num = (t_num * 3) + 1

        count += 1

    return (count, number)

if __name__ == "__main__":
  print(max((sequence(x) for x in xrange(5,100000+1))))

