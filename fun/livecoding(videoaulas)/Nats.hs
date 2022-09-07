module Nats where


data Nat = Zero | Succ Nat

plus :: Nat -> Nat -> Nat
plus n Zero     = n
plus n (Succ m) = Succ (plus n m)

instance (Show Nat) where
     show Zero = "0"
     show (Succ Zero) = "S0"
     show (Succ x) = "S"
