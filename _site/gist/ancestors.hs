-- Traversing a category tree

data Tree = Node [([Char], Tree)] | Empty deriving (Show)

testtree :: Tree

testtree =  Node [("Fashion",
                Node [("Women", 
                    Node [("Clothing", 
                        Node [("Shirts", Empty),
                              ("Coats", Empty),
                              ("Dresses", Empty)]
                          ), 
                          ("Denim", Empty), 
                          ("Footwear", Empty)
                         ]
                      ),
                      ("Men", Empty), 
                      ("Children", Empty)
                     ]
                  ),
                  ("Design", Empty), 
                  ("Art", Empty)
                 ]


traverse = ancestors testtree

-- inner traverse
ancestors Empty = return ()
ancestors (Node (x:xs)) = do handle x; neighbour xs

-- same level traverse
neighbour [] = return ()
neighbour (x:xs) = do handle x; neighbour xs

-- do something with the tuple 
handle (a, b) = do print a; ancestors b



-- Checking how to traverse a list of nested tuples
testing = [("a", [("a1", 11), ("a2", 12), ("a3",13)]), ("b",[("b1", 21)])]

testtrav = element testing

element ::  [([Char], [([Char], Integer)])] => IO () 
element [] = return ()
element ((a,b):xs) = do print a; innerelem b; element xs

innerelem ::  [([Char], Integer)] => IO ()
innerelem [] = return ()
innerelem ((a,b):xs) = do print a; print b; innerelem xs