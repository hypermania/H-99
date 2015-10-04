myLast :: [a] -> a
myLast (x:[]) = x
myLast (x:xs) = myLast xs

main = do
  putStrLn "aaaa"
  main
