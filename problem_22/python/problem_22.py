#!/usr/bin/env python3

import csv

def readfile(filename):
    def mod_ord(char):
        return ord(char) - 64
    ret_list = []
    with open(filename) as csvfile:
        for c in csv.reader(csvfile):
            for count,name in enumerate(sorted(c),1):
                ret_list.append(sum(map(mod_ord,name))* count)

    return ret_list

if __name__ == "__main__":
    print(sum(readfile("../names.txt")))
