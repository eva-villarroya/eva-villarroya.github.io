-- Project Euler - Problem 2
-- Find the sum of the even-valued terms in the Fibonacci sequence whose values do not exceed four million
-- https://projecteuler.net/problem=2
fibonacci max xs = if (((xs !! ((length xs) - 2)) + (xs !! ((length xs) - 1))) >= max)
	then 
		xs
	else fibonacci max (xs ++ [(xs !! ((length xs) - 2)) + (xs !! ((length xs) - 1))])
