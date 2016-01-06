module H015 where

repli :: [a] -> Int -> [a]
repli [] n = []
repli (x:xs) n = replicate n x ++ repli xs n

repli' :: [a] -> Int -> [a]
repli' list n = list >>= replicate n
