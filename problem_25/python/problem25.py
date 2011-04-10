#!/usr/bin/python
"""Solution for problem 25."""

def fibinaci_generator():
  first = 1
  second = 1
  count = 3
  while True:
    next_num = first + second
    if len(str(next_num)) == 1000:
      return count
    first = second
    second = next_num
    count += 1

if __name__ == "__main__":
  print(fibinaci_generator())
