module H004 where

length' :: [a] -> Int
length' [] = 0
length' (x:xs) = 1 + length' xs
