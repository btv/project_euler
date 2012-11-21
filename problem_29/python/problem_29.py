#!/usr/bin/env python3

from operator import pow

if __name__ == "__main__":
    print(len(set(pow(a,b) for a in range(2,101) for b in range(2,101))))
