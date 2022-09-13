module Shapes where

data Color = Red | Green | Blue deriving(Show, Eq)

-- type RGBColor = (Double,Double,Double) (1.0,1.0,1.0)
-- type Point3D = (Double,Double,Double)

data RGBcolor = RGBColor Double Double Double deriving(Show, Eq)

data Point3D = Point3D Double Double Double deriving(Show, Eq)

data Shape = Circle Double | Square Double | Rectangle Double Double deriving(Show, Eq)

data PairInt = PairInt Int Int deriving(Show, Eq)

data Pair a b = Pair a b deriving(Show, Eq)

outl :: Pair a b -> a
outl (Pair x _) = x

outr :: Pair a b -> b
outr (Pair _ y) = y

data PairChar = PairChar Char Char deriving(Show, Eq)

data PairCharInt = PairCharInt Char Int deriving(Show, Eq)

-- data cria um novo tipo, type é um sinonimo de um tipo q ja existe

area :: Shape -> Double
area (Circle r)      = pi*(r^2)
area (Square s)      = s^2
area (Rectangle w h) = w*h

rot90 :: Shape -> Shape
rot90 (Rectangle w h) = Rectangle h w
rot90 x = x 

height :: Shape -> Double
height (Circle r)      = r*2
height (Square s)      = s
height (Rectangle _ h) = h
