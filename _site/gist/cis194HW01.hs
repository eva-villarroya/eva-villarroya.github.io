-- CIS 194: Introduction to Haskell (Spring 2015)
-- Homework 1 - Validating Credit Card Numbers
-- Luhn Algorithm

data Result = Valid | Invalid deriving (Show)

doubleEvenPosition :: Integral a => [a] -> [a]

doubleEvenPosition [] = []
doubleEvenPosition (x:[]) = x:[]
doubleEvenPosition (x:(y:zs)) = let double = x * 2 
    in (double `mod` 10 + double `div` 10) : y : doubleEvenPosition zs

luhn :: Integral a => [a] -> Result

luhn xs | checksum == 0 = Main.Valid
        | otherwise = Main.Invalid  
    where checksum = (sum (doubleEvenPosition xs)) `mod` 10