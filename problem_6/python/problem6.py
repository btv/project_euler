#!/usr/bin/python
"""Project Euler solution using generators."""

def generator():
    for x in range(1,100+1):
        yield (x,x*x)
sum1 = 0
sum2 = 0

for i in generator():
    sum1 += i[0]
    sum2 += i[-1]

print(sum1 * sum1 - sum2)

