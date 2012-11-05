#!/usr/bin/env python3

ones = {'1': 'one', '2': 'two', '3': 'three', '4': 'four', '5': 'five',
        '6': 'six', '7': 'seven', '8': 'eight', '9': 'nine', '0': ''}

tens = {'2': 'twenty', '3': 'thirty', '4': 'forty', '5': 'fifty',
        '6': 'sixty', '7': 'seventy', '8': 'eighty', '9': 'ninety'}

teens = {'10': 'ten', '11': 'eleven', '12': 'twelve', '13': 'thriteen',
         '14': 'fourteen', '15': 'fifteen', '16': 'sixteen', '17': 'seventeen',
         '18': 'eighteen', '19': 'nineteen'}

hundreds = {0: 0, 1: "onehundredand", 2: "twohundredand",
            3: "threehundredand", 4: "fourhundredand",
            5: "fivehundredand", 6: "sixhundredand",
            7: "sevenhundredand", 8: "eighthundredand",
            9: "ninehundredand"
           }

if __name__ == "__main__":
    tot = 0
    for h in range(10):
        for y in range(1,100):
            try:
                t,o = tuple(str(y))
                if t is '1':
                    tot += len("{h}{t}".format(h=hundreds[h], t=teens[t + o]))
                else:
                    tot += len("{h}{t}{o}".format(h = hundreds[h], t=tens[t],
                                                  o=ones[o]))
            except ValueError:
                    tot += len("{h}{o}".format(h= hundreds[h], o=ones[str(y)]))
                    print("{h}{o}".format(h= hundreds[h], o=ones[str(y)]))
    tot += len('onethousand')
    print(tot)
