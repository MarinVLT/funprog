module Av where

av :: Fractional a => a -> a -> a
av x y = (x+y)/2

-- Outra resolução:
-- av :: (Double, Double) -> Double
-- av (x,y) = (x + y)/2

