module Tipos where

-- typeclasses:  Num; Fractional; Integral.
-- primitive types: Char; Integer; Int; Float; Double. 
-- types: [Char](lista de char);(Int,Int)(tupla); Int -> Int(função).
-- kind -> casta
--[] (pega um tipo e retorna coisas de tipo tipo)
--(,) (pega dois tipos e vira um novo tipo - pares)
--(->) (pega dois tipos e vira um novo tipo - funções)'

--criando um type
data Weekday = Mon | Tue | Wed | Thu | Fri | Sat | Sun deriving (Show)
-- deriving (Show) deixa para o haskell implementar o show (print)


nextday :: Weekday -> Weekday
nextday Mon = Tue
nextday Tue = Wed
nextday Wed = Thu
nextday Thu = Fri
nextday Fri = Sat
nextday Sat = Sun
nextday Sun = Mon

nextWorkingDay:: Weekday -> Weekday
nextWorkingDay Mon = Tue
nextWorkingDay Tue = Wed
nextWorkingDay Wed = Thu
nextWorkingDay Thu = Fri
nextWorkingDay _ = Mon

--nextWorkingDay:: Weekday :: Weekday
--nextWorkingDay Fri = Mon
--nextWorkingDay Sat = Mon
--nextWorkingDay Sun = Mon
--nextWorkingDay x = nextday x


