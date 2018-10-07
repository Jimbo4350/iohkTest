module Encircular where

-- you are measuring displacement here
-- perhaps make 0 the start point. Assign
-- integers to operations?

-- no use trignometic functions? Or use mod!
-- Mod would be easier. Def use mod. Assign ints
-- to certain operations. I'm guessing x `mod` 4 is what you would
-- want to use. Def for the turning operations.

data Direction = North | South | East | West deriving Show

type Coord = (Int,Int,Direction)

startPos :: Coord
startPos = (0,0,North)

gForward :: Coord -> Coord
gForward (x,y,North) = (x + 1, y, North)
gForward (x,y,South) = (x - 1, y, South)
gForward (x,y,East)  = (x, y + 1, East)
gForward (x,y,West)  = (x, y - 1, West)

lRotate :: Coord -> Coord
lRotate (x, y, North) = (x,y, West)
lRotate (x, y, South) = (x,y, East)
lRotate (x, y, East)  = (x,y, North)
lRotate (x, y, West)  = (x,y, South)

rRotate :: Coord -> Coord
rRotate (x, y, North) = (x,y, East)
rRotate (x, y, South) = (x,y, West)
rRotate (x, y, East)  = (x,y, South)
rRotate (x, y, West)  = (x,y, North)


-- Bulk done, just need to make doesCircleExist function and make it interactive.