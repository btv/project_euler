#!/usr/bin/python

def fibinaci_list( in_list, input1, input2):
  flip = True
  while ( input1 < 4000000 or input2 < 4000000):
    if( flip == True):
      input1 = input1 + input2
      in_list.append(input1)
      flip = False
    else:
      input2 = input1 + input2
      in_list.append(input2)
      flip = True 

def even(n):
  if n % 2 == 0:
    return True
  else:
    return False


def main():
  first_list = []
  fibinaci_list(first_list, 0, 1)
  second_list = filter(even, first_list)
  print "%s" % (sum(second_list))

if __name__ == "__main__":
  main()