module IsSingleton 

-- | If `True` then `Nat`, else `List Nat`.
isSingleton : Bool -> Type 
isSingleton True = Nat 
isSingleton False = List Nat

mkSingle : (x : Bool) -> isSingleton x 
mkSingle True = 0 
mkSingle False = []

-- | If single flag is `True`, then returns value 
--   of `Nat`. Otherwise, sums the list of `Nat`.
sum : (single : Bool) -> isSingleton single -> Nat 
sum True x = x
sum False [] = 0
sum False (x :: xs) = x + sum False xs
