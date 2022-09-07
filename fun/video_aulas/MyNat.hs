module MyNat where

data Nat = Zero | Succ Nat  deriving (Show)
-- Succ Nat e Zero -> data constructort
-- Succ :: Nat -> Nat

plus :: Nat -> Nat -> Nat
plus n Zero     = n
plus n (Succ m) = Succ (plus n m)

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
