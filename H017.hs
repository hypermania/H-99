module H017 where

split' :: [a] -> Int -> ([a],[a])
split' list n = helper n [] list
  where helper 0 left right = (left, right)
        helper n left [] = (left,[])
        helper n left (x:right) = helper (n-1) (left++[x]) right

