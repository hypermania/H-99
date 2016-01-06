module H016 where

import Data.List

dropEvery :: [a] -> Int -> [a]
dropEvery list n = concat . map init $
                   helper list n
  where helper [] _ = []
        helper list n = take n list : helper (drop n list) n
