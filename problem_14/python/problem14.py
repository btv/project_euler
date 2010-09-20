#!/usr/bin/python
"""Python solution for Project Euler problem #14."""

def sequence(number):
  tmp_list = [number]
  
  while( number != 1):
    if number % 2 == 0:
      number /= 2
    else:
      number = (number * 3) + 1

    tmp_list.append(number)

  return (len(tmp_list), tmp_list)


if __name__ == "__main__":
  print(max([sequence(x) for x in range(5,100000+1)]))

