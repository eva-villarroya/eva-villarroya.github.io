-- Implement a length alike function
myLength :: [a] -> Int
myLength [] = 0
myLength xs = sum [1 | x <- xs]    