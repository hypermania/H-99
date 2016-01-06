module H013 where

import H011

encodeDirect :: (Eq a) => [a] -> [Encoding a]
encodeDirect = map (\(n,x) -> if n==1
                              then Single x
                              else Multiple n x)
               . foldr helper []
  where helper x [] = [(1,x)]
        helper x (y@(a,b):ys)
          | x==b = (a+1,b):ys
          | otherwise = (1,x):y:ys
