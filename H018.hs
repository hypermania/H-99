module H018 where

import H017

slice :: [a] -> Int -> Int -> [a]
slice list n m = fst $ split'( snd (split' list (n-1))) (m-no+1)
