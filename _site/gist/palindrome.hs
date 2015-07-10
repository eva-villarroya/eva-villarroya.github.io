-- Converts any list in a palindrome (reads the same left to right or right to left)
palindrome :: [a] -> [a]
palindrome [] = [] 
palindrome xs = xs ++ (reverse xs)