module H019 where

rotate :: [a] -> Int -> [a]
rotate xs 0 = xs
rotate (x:xs) n
  | n>=1 = rotate (xs++[x]) (n-1)
  | otherwise = rotate (x:xs) (n `mod` (length xs + 1))
