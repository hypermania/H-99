module H006 where

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome list = reverse list == list
