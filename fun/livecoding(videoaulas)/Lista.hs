module Lista where

data ListInt = Empty | ListInt Int ListInt deriving(Show, Eq)

-- Empty = lista vazia
-- Representação:
-- ListInt 1 (ListInt 2 (ListInt 3 Empty)) -> [1,2,3]
-- ListInt 1 (ListInt 2 Empty) -> [1,2]
-- ListInt 1 Empty -> [1]
-- Empty -> []

hd :: ListInt -> Int
hd Empty = error "Empty não tem head"
hd (ListInt x _) = x

tl :: ListInt -> ListInt
tl Empty = error "Empty não tem tail"
tl (ListInt _ y) = y
