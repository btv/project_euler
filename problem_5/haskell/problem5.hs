divisible_1_to_20 n
  | mod n 20 /= 0 = False
  | mod n 19 /= 0 = False
  | mod n 18 /= 0 = False
  | mod n 17 /= 0 = False
  | mod n 16 /= 0 = False
  | mod n 15 /= 0 = False
  | mod n 14 /= 0 = False
  | mod n 13 /= 0 = False
  | mod n 12 /= 0 = False
  | mod n 11 /= 0 = False
  | otherwise = True

-- solved this by the help on this URL:
-- http://basildoncoder.com/blog/2008/06/10/project-euler-problem-5/
-- by increaing the loop from 2 to 2520, problem solves in seconds
problem5 = until (divisible_1_to_20) (+2520) 2520
