module H010 where

import H009

encode :: (Eq a) => [a] -> [(Int,a)]
encode = map (\xs -> (length xs, head xs)) . pack
