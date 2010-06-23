#!/usr/bin/python
"""
code solution for Euler Project #8
"""

def int_to_list(number):
  digit_list = []

  while number:
    digit = number % 10
    digit_list.append(digit)
    number /= 10

  return digit_list

def productOf5(int_list, index):
  return int_list[index - 2] * int_list[index - 1] * int_list[index] * \
         int_list[index + 1] * int_list[index + 2]

def main():
  index = 0
  high_score = 0
  investigate_this = 7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450


  digit_list = int_to_list(investigate_this)
  digit_list_length = len(digit_list)

  while index < digit_list_length:
    if digit_list[index] == 0:
      temp_product = 0
    elif index == 0:
      temp_product = digit_list[index] * digit_list[index + 1] * \
                     digit_list[index + 2] * digit_list[index + 3] * \
                     digit_list[index + 4]
    elif index == 1:
      temp_product = digit_list[index - 1]* digit_list[index] * \
                     digit_list[index + 1] * digit_list[index + 2] * \
                     digit_list[index + 3]
    elif index == 999:
      temp_product = digit_list[index] * digit_list[index - 1] * \
                     digit_list[index - 2] * digit_list[index - 3] * \
                     digit_list[index - 4]
    elif index == 998:
      temp_product = digit_list[index + 1]* digit_list[index] * \
                     digit_list[index - 1] * digit_list[index - 2] * \
                     digit_list[index - 3]
    else:
      temp_product = productOf5(digit_list, index)

    if temp_product > high_score:
        high_score = temp_product

    index += 1

  print high_score



if __name__ == "__main__":
  main()
