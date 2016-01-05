module H003 where

elementAt :: [a] -> Int -> a
elementAt [] n = error "Out of bounds"
elementAt (x:xs) n
  | n==1 = x
  | n>1 = elementAt xs (n-1)
  | otherwise = error "Cannot access nonpositive index"

