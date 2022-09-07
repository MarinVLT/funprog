module Bollean where

data Bollean = F | T deriving (Show)

lor :: Bollean -> Bollean -> Bollean 
lor F F = F
lor _ _ = T

land :: Bollean -> Bollean -> Bollean
land T T = T
land _ _ = F

--lor :: (Bollean,Bollean) -> Bollean
--lor (F,F) = F
--lor _ = T

--land :: (Bollean,Bollean) -> Bollean
--land (T,T) = T
--land _ = F
