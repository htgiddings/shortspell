-- | The basics of gameplay relevant to spells, including dice rolls and damage
module Gameplay (Damage, DamageType, Die, Roll) where

data Die = D4 | D6 | D8 | D10 | D12 | D20 deriving (Eq, Ord, Bounded)
instance Enum Die where
  fromEnum d = case d of
                    D4 -> 4
                    D6 -> 6
                    D8 -> 8
                    D10 -> 10
                    D12 -> 12
                    D20 -> 20
  toEnum d = case d of
                4  -> D4
                6  -> D6
                8  -> D8
                10 -> D10
                12 -> D12
                20 -> D20
                _  -> error "Not a die used in DnD"
instance Show Die where
  show d = 'd' : (show $ fromEnum d)

data Roll = Roll { numberOfDice :: Integer, dieType :: Die } deriving (Eq)
instance Show Roll where
  show r =  (show $ numberOfDice r ) ++ ( show $ dieType r )

data DamageType = Acid | Bludgeoning | Cold | Fire | Force | Lightning |
                  Necrotic | Piercing | Poison | Psychic | Radiant | Slashing |
                  Thunder deriving (Show, Eq, Enum)

data Damage = Damage { damageType :: DamageType, diceRoll :: Roll }
                        deriving (Show, Eq)
