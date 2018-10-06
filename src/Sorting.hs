module Sorting where

import Data.List (sort, group, sortOn, length, concat)

sampleInput :: [Int]
sampleInput = [8,5,5,5,5,1,1,1,4,4]

customSort :: IO ()
customSort = mapM_ print (concat . sortOn length . group $ sort sampleInput)