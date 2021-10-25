module Magic (CastingRange, Component, Duration, EffectRange, Level, School, Spell) where

import Gameplay (Damage)

--Effect and Casting Ranges
data Range = Range { feet :: Integer } deriving (Show, Eq, Ord)
data CastingRange = Touch | Range Integer deriving (Show, Eq)
data EffectRange = Self | Range Integer deriving (Show, Eq)

data Duration = Reaction | Instantaneous | Concentration { minutes :: Integer }
                  deriving (Show, Eq)

data Level = Cantrip | One | Two | Three | Four | Five | Six | Seven | Eight |
              Nine deriving (Show, Eq, Enum, Ord)

--Wizard School
data School = Abjuration | Conjuration | Divination | Enchantment | Evocation | Illusion |
              Necromancy | Transmutation | Universal
                deriving (Show, Eq, Enum)

data Component = Verbal | Somatic | Material { material_description :: String }
                    deriving (Eq, Enum)
instance Show Component where
    show c = case c of
                Verbal -> "V"
                Somatic -> "S"
                Material -> "M " : material_description c

data CasterClass = ArcaneRouge | Bard | Cleric | Druid | Paladin | Ranger | Sorcerer | Warlock |
                    Wizard deriving (Show, Eq, Enum)

--Upcasting Effects
--data Upcast =

data Spell = Spell { name :: String, duration :: Duration, range :: Integer,
                     level :: Level, damage :: Damage, ritual :: Boolean } deriving (Show, Eq)
