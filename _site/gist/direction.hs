-- Given three points find if the angle is looking left, right or flat
data Direction = Left | Right | Flat deriving (Show)

turn :: (Num a, Ord a) => [(a, b)] -> Direction

turn [] = Main.Flat
turn xs = let a = head xs
              b = head (drop 1 xs)
              c = head (drop 2 xs)
        in if (fst b) - (fst a) > 0 && (fst c) - (fst a) > 0
        then Main.Right
        else if (fst b) - (fst a) < 0 && (fst c) - (fst a) < 0
             then Main.Left
             else Main.Flat


turn2 :: (Num a, Ord a) => [(a, b)] -> Direction

turn2 [] = Main.Flat
turn2 xs | distAB > 0 && distAC > 0 = Main.Right
         | distAB < 0 && distAC < 0 = Main.Left
         | otherwise = Main.Flat
        where a = head xs
              b = head (drop 1 xs)
              c = head (drop 2 xs)
              distAB = (fst b) - (fst a)
              distAC = (fst c) - (fst a)