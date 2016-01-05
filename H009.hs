module H009 where

pack :: (Eq a) => [a] -> [[a]]
pack list = reverse $ helper list []
  where helper [] result = result
        helper (x:xs) result
          | null result || head (head result) /= x = helper xs ([x]:result)
          | otherwise = helper xs ((x:head result):(tail result))
