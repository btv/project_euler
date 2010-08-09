#!/usr/bin/python
"""Solution for problem 25."""

def fibinaci_generator():
  first = 1
  second = 1
  while True:
    next = first + second
    if len(str(next)) == 4:
      return next
    first = second
    second = next

if __name__ == "__main__":
  print(fibinaci_generator())
