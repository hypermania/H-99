module H011 where

import H010

data Encoding a = Multiple Int a | Single a deriving Show

encodeModified :: (Eq a) => [a] -> [Encoding a]
encodeModified = map (\(n,x) -> if n==1
                                then Single x
                                else Multiple n x
                     )
                 . encode
