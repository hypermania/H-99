module H012 where

import H011

decodeModified :: (Eq a) => [Encoding a] -> [a]
decodeModified = concat . map expand
  where expand (Single x) = [x]
        expand (Multiple n x) = replicate n x
