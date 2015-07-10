-- Calculates the mean value of the values in a list
mean ::  Fractional a => [a] -> a
mean [] = 0
mean xs = sum [ x | x <- xs] / fromIntegral (length xs)