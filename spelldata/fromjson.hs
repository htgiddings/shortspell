{-# LANGUAGE DeriveGeneric #-}

-- | Import a spell list in .json format
-- This hs file, and only this hs file, depends on Data.Aeson
module Dnd.Magic.FromJSON where

import Dnd.Magic (Spell)
import GHC.Generics

instance Generic Spell
--instance FromJSON Spell
