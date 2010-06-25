#!/usr/bin/python

def sequence(number):
  tmp_list = [number]
  
  while( number != 1):
    if even(number):
      number = number / 2
    else:
      number = (number * 3) + 1

    tmp_list.append(number)

  return tmp_list

def even(number):
  if ( number % 2 == 0):
    return True
  else:
    return False 

def main():
  first_list = map(sequence, range(1,1000000+1))
  second_list = zip( map(len, first_list), first_list)

  print max(second_list)[1]



if __name__ == "__main__":
  main()
