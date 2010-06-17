problem1 = sum $ filter (\x -> mod x 3 == 0 || mod x 5 == 0) [1..1000]
problem1' = sum $ filter (\x -> mod x 3 == 0 || mod x 5 == 0) [1..999]
