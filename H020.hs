module H020 where

import H001
import H017

removeAt :: Int -> [a] -> (a,[a])
removeAt n list = (myLast (fst splitted), (init . fst) splitted ++ snd splitted)
  where splitted = split' list n
