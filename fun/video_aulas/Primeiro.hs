module Primeiro where

--Sempre definir o TYPE
errado :: [Char]
errado = "not good"

five :: Integer
five = 5

x :: Num p => p
x = 6

addOne :: Integer -> Integer
addOne 0 = 1
addOne 1 = 2
addOne 2 = 3
addOne x = x + 1
--dentro de uma definição a ordem importa, dentro do modulo não

addFive :: Integer -> Integer
addFive x = five + x 

addFour :: Integer -> Integer
addFour = undefined 

--addThree :: Integer -> Integer
--addThree x = addThree x (looping infinito)

f :: Integer -> Integer
f x = addFive x + addFive 12

sempreSix :: Integer -> Integer
sempreSix x = 6

sempreSeven :: Integer -> Integer
sempreSeven _ = 7
-- _ significa qualquer coisa, não consulta o argumento
--

