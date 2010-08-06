#!/usr/bin/python
"""Solution for problem 25."""

def fibinaci_generator():
  flip = True
  out = False
  num1 = 1
  num2 = 1
  while True:
    if flip == True:
      num1 += num2
      if len(str(num1)) == 4:
        return num1
      flip = False
    else:
      num2 += num1
      if len(str(num2)) == 4:
        return num2
      flip = True

if __name__ == "__main__":
  print(fibinaci_generator())
