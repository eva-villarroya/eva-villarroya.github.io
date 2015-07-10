-- file: ch01/WC.hs
-- lines beginning with "--" are comments.
-- Real World Haskell, by Bryan O’Sullivan, John Goerzen, and Don Stewart. Copyright 2009 Bryan O’Sullivan, John Goerzen, and Donald Stewart, 978-0-596-51498-3.
main = interact wordCount
	where wordCount input = show (length input) ++ "\n"
