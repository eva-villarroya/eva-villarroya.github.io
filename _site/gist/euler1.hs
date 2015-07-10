-- Project Euler - Problem 1
-- Find the sum of all the multiples of 3 or 5 below 1000.
-- https://projecteuler.net/problem=1
 sum [ x | x <- [1..1000], x < 1000, x `mod` 3 == 0 || x `mod` 5 == 0]