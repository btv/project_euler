#!/usr/bin/python
"""Python solution for Project Euler problem #14."""

from itertools import imap

def sequence(number):
    t_num = number
    count = 1

    while(t_num > 1):
        if t_num % 2 == 0:
            t_num /= 2
        else:
            t_num = (t_num * 3) + 1

        count += 1

    return (count, number)

if __name__ == "__main__":
  print max(imap(sequence, xrange(999999,3,-2)))
