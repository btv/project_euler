#!/usr/bin/env python3

print(sum([ x for x in range(1,1000000) if
                str(x) == str(x)[::-1] and
                str(bin(x))[2:] == str(bin(x))[2:][::-1]]))
