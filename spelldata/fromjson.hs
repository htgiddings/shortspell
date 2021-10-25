{-# LANGUAGE DeriveGeneric #-}

-- | Import a spell list in .json format
module Dnd.Magic.FromJSON where

import DnD.Magic (Spell)
import GHC.Generics

instance Generic Spell
instance FromJSON Spell where
  toEncoding = genericToEncoding defaultOptions
