module DnD.Magic where

import DnD.Gameplay

--Effect and Casting Ranges
data Range = Range { feet :: Integer } deriving (Show, Eq, Ord)
data CastingRange = Touch | Range deriving (Show, Eq)
data EffectRange = Self | Range deriving (Show, Eq)

--Duration
data Duration = Reaction | Instantaneous | Concentration { minutes :: Integer }
                  deriving (Show, Eq)

--Level
data Level = Cantrip | One | Two | Three | Four | Five | Six | Seven | Eight |
              Nine deriving (Show, Eq, Enum, Ord)

--Wizard School
data School = Abjuration | Conjuration | Divination | Enchantment | Evocation |
              Illusion | Necromancy | Transmutation | Universal
              deriving (Show, Eq, Enum)

--Components
data Component = Verbal | Somatic | Material { material_description :: String }
                    deriving (Eq, Enum)
instance Show Component where
    show c = case c of
                Verbal -> "V"
                Somatic -> "S"
                Material -> "M" : material_description c

--Caster Class
data Caster = ArcaneRouge | Bard | Cleric | Druid | Paladin | Ranger | Sorcerer
              Warlock | Wizard deriving (Show, Eq, Enum)

--Upcasting Effects
--data Upcast =

data Spell = Spell { name :: String, duration :: Duration, range :: Integer,
                     level :: Level, damage :: Damage, ritual :: Boolean } deriving (Show, Eq)
