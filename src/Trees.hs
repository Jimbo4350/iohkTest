module Trees where

data Tree a = Node a (Tree a) (Tree a) | Nil deriving Show

-- BST
treeFromList :: [Int] -> Tree Int
treeFromList [] =  Nil
treeFromList (x:xs) = Node x (treeFromList (filter (<x) xs)) (treeFromList (filter (>x) xs))

-- Preorder traversal
listFromTree :: Tree Int -> [Int]
listFromTree Nil = []
listFromTree (Node x left right) = [x] ++ listFromTree left ++ listFromTree right

-- if treeFromList /= listFromTree then it is not a preorder
-- traversal of a valid BST!