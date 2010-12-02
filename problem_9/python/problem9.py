#!/usr/bin/python3
"""
python soltion for project euler problem #9.
"""

print( [a*b*(1000 - b -a) for a in range(1,500+1) for b in range(1,500+1) \
        if a * a + b * b == ((1000 -b -a) * (1000 - b - a))][0])

