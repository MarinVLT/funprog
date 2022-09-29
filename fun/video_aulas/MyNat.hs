module MyNat where

data Nat = Zero | Succ Nat  --deriving (Show)
-- Succ Nat e Zero -> data constructort
-- Succ :: Nat -> Nat

instance (Show Nat) where
    show (Zero) = "0"
    --show (Succ x) = "S" ++ show x
    show (Succ x) = 'S' : show x
    -- usando o '++' a haskell tem que calcular para saber o resultado
    -- o que não acontece com ':'
    
plus :: Nat -> Nat -> Nat
plus n Zero     = n
plus n (Succ m) = Succ (plus n m)

--tamanho de lista de nat
len :: [a] -> Nat
len [] = Zero
len (x:xs) = Succ(len xs)

--reverso de lista
rev :: [a] -> [a]
rev [] = []
rev (x:xs) = (rev xs) ++ [x]

atLeastTwo :: [a] -> Bool
atLeastTwo [] = False
atLeastTwo (x:xs) = 
   case xs of
      [] -> False
      (y:ys) -> True

firstTwo :: [a] -> (a,a)
firstTwo [] = error "não tem 2 primeiros"
firstTwo [a] = error "não tem 2 primeiros"
firstTwo (x:y:_) = (x,y)

describe :: [a] -> String
describe xs
  | l == 0 = "empty"
  | l < 3     = "small"
  | l < 6     = "big"
  | otherwise      = "too big"
  where l = length xs

--atLeastTwo :: [a] -> Bool
--atLeastTwo [] = False
--atLeastTwo [a] = False
--atLeastTwo _ = True

-- FUNCIONAMENTO
-- plus (ssz) (sssz)=
-- s(plus (ssz) (ssz))
-- s(s(plus (ssz) (sz)))
-- s(s(s(plus (ssz) z)))
-- s(s(s(ssz) -> sssssz

-- (+) :: Nat -> Nat -> Nat
-- (+) = plus           
-- (+) x y = plus x y 
-- as duas linhas da função chegam na mesma coisa

--plus :: Nat -> Nat -> Nat
--plus Zero      Zero    = Zero
--plus Zero     (Succ m) = Succ m
--plus (Succ n)  Zero    = Succ n
--plus (Succ n) (Succ m) = Succ(Succ(plus n m))
