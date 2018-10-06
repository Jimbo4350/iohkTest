module Factor where

import Data.List (sort, (!!))

-- TODO: Need to make interactive.

factorSelect :: Int -> Int -> Int
factorSelect num index = do
    let factors = factorFunction num
    if index - 1 <= length factors - 1 then factors !! (index - 1) else 0

factorFunction :: Int -> [Int]
factorFunction 0 = []
factorFunction 1 = [1]
factorFunction num = go num 1 []
  where
    go :: Int -> Int -> [Int] -> [Int]
    go num count list
      | count == num         = sort list
      | num `rem` count == 0 = go num (count + 1) (count : list)
      | otherwise            = go num (count + 1) list

