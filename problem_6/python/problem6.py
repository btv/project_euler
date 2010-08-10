#!/usr/bin/python3
"""Project Euler solution using generators."""

sum1 = 0
sum2 = 0

for i in ((x,x**2) for x in range(1,100+1)):
    sum1 += i[0]
    sum2 += i[-1]

print(sum1 * sum1 - sum2)

