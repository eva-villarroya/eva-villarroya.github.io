-- Merges a list of lists with a separator
myIntersperse :: a -> [[a]] -> [a]
myIntersperse _ [] = []
myIntersperse s xs = if length xs > 1 
    then head [x ++ (s : []) | x <- xs]
    else head xs