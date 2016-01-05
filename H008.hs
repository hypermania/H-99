module H008 where

compress :: (Eq a) => [a] -> [a]
compress list = reverse $ helper list []
  where helper [] result = result
        helper (x:xs) result
          | null result || head result /= x = helper xs (x:result)
          | otherwise = helper xs result
