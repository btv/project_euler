#!/usr/bin/env python3

ones = {1: 'one', 2: 'two', 3: 'three', 4:'four', 5: 'five', 6:'six',
        7: 'seven', 8: 'eight', 9: 'nine', 0: 'zero'}

tens = {10: 'ten', 20:'twenty', 30: 'thirty', 40: 'forty', 50: 'fifty',
        60: 'sixty', 70: 'seventy', 80: 'eighty', 90: 'ninety'}

teens = {11: 'eleven', 12: 'twelve', 13:'thriteen', 14: 'fourteen',
         15: 'fifteen', 16: 'sixteen', 17: 'seventeen',
         18: 'eighteen', 19: 'nineteen'}

hundreds = {0: 0,
            1: lambda: len("one hundred and"),
            2: lambda: len("two hundred and"),
            3: lambda: len("three hundred and"),
            4: lambda: len("four hundred and"),
            5: lambda: len("five hundred and"),
            6: lambda: len("six hundred and"),
            7: lambda: len("seven hundred and"),
            8: lambda: len("eight hundred and"),
            9: lambda: len("nine hundred and")
           }

if __name__ == "__main__":
    tot = 0
    tstr= None
    for y in range(0,99):
        t= None
        try:
            t,o = tuple(str(y))
        except ValueError:
            o = str(y)
        if t is None:
            tstr = ones[int(o)]
        else:
            tstr = ' '.join(tens[int(t)], ones[int(o)])
    print(tstr)

    tot += len('one thousand')
    print(tot)
