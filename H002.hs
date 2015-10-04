module H002 where

import H001

myButLast :: [a] -> a
myButLast = myLast . tail
