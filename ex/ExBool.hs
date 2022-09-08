module ExBool where

-- Do not alter this import!
import Prelude
    ( Show(..)
    , Eq(..)
    , Ord(..)
    , Num(..)
    , Enum(..)
    , Integral(..)
    , Int
    , Char
    , (++)
    , ($)
    , (.)
    , undefined
    , error
    , otherwise
    )

-- Define evenerything that is undefined,
-- without using standard Haskell functions.
-- (Hint: recursion is your friend!)


--fase teste
data Bool = False | True  

instance Show Bool where
   show False = "False"
   show True = "True"

instance Enum Bool where
   toEnum 0       = False
   toEnum 1       = True
   toEnum _       = error "Prelude.Enum.().toEnum: bad argument"
   fromEnum False = 0
   fromEnum True  = 1

-- conjunction (AND)
(&&) :: Bool -> Bool -> Bool
(&&) True True = True
(&&) _ _ = False

infixr 3 &&

-- disjunction (OR)
(||) :: Bool -> Bool -> Bool
(||) False False = False
(||) _ _ = True

infixr 2 ||

-- NAND (Sheffer stroke)
(/|\) :: Bool -> Bool -> Bool
(/|\) True True = False
(/|\) _ _ = True

infixr 2 /|\

-- NOR (aka: Peirce arrow or Quine dagger)
(\|/) :: Bool -> Bool -> Bool
(\|/) False False = True
(\|/) _ _ = False

infixr 2 \|/

-- XOR (exclusive disjunction)
(<=/=>) :: Bool -> Bool -> Bool
(<=/=>) False False = False
(<=/=>) True True = False 
(<=/=>) _ _ = True    
--(<=/=>) True False = True
--(<=/=>) False True = True    

infixr 2 <=/=>

-- boolean negation
not :: Bool -> Bool
not True = False
not _ = True

-- if-then-else expression
ifThenElse :: Bool -> a -> a -> a
ifThenElse True x _  = x
ifThenElse False _ y = y

-- logical "implies"
(==>) :: Bool -> Bool -> Bool
(==>) True False = False
(==>) _ _ = True  

infixr 1 ==>

-- logical "implied by"
(<==) :: Bool -> Bool -> Bool
(<==) False True = False
(<==) _ _ = True 

infixl 1 <==

-- logical equivalence
(<=>) :: Bool -> Bool -> Bool
(<=>) True False = False
(<=>) False True = False  
(<=>) _ _ = True 
-- (<=>) False False = True
-- (<=>) True True = True 

infixr 1 <=>


