-- The controversial FizzBuzz (http://en.wikipedia.org/wiki/Fizz_buzz#Other_uses)
-- Print Fizz for multiples of 3, Buzz for multiples of 5 and FizzBuzz for multiples of both, othewise print the number.
-- Two implementations are provided, first with if/else construction, second with guards. Guards make code more readable.

fizzbuzz :: (Integral a, Show a) => [a] -> IO ()

fizzbuzz [] = return ()
fizzbuzz (x:xs) = do if x `mod` 15 == 0
                     then print "FizzBuzz" 
                     else if x `mod` 5 == 0
                          then print "Buzz"
                          else if x `mod` 3 == 0
                               then print "Fizz"
                               else print x
                     fizzbuzz xs


fizzbuzz2 :: (Integral a, Show a) => [a] -> IO ()

fizzbuzz2 [] = return ()
fizzbuzz2 (x:xs) | isMultipleOf x 15 = result "FizzBuzz"
                 | isMultipleOf x 3 = result "Fizz"
                 | isMultipleOf x 5 = result "Buzz"
                 | otherwise = result x 
             where isMultipleOf a n = a `mod` n == 0
                   result msg = do print msg 
                                   fizzbuzz2 xs