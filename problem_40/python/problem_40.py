#!/usr/bin/env python3

from functools import reduce
from operator import mul

if __name__ == "__main__":
    ret_list = []
    count = 1
    data = ''.join(str(x) for x in range(1,1000000))
    while count < 1000000:
        ret_list.append(data[count-1])
        count *= 10

    print(reduce(mul, map(int,ret_list)))
