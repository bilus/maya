module Draw.Stylesheet
  ( stylesheet
  )
  where

import Prelude

import CSS (GenericFontFamily(..), black, border, byClass, byId, display, div, element, fontFamily, fromString, grid, height, key, margin, px, red, render, renderedSheet, sansSerif, solid, width, (&), (?), fromString)
import Data.Maybe (fromJust)
import Data.NonEmpty ((:|))
import Partial.Unsafe (unsafePartial)

systemUi :: GenericFontFamily
systemUi = GenericFontFamily $ fromString "system-ui"

-- newtype GridTemplateColumns = Display Value

-- derive instance eqDisplay :: Eq Display
-- derive instance ordDisplay :: Ord Display

-- instance valDisplay :: Val Display where
--   value (Display v) = v

-- inline :: Display
-- inline = Display $ fromString "inline"

stylesheet ∷ String
stylesheet = unsafePartial fromJust $ renderedSheet $ render do

  element "body" ? do
    margin (px 0.0) (px 0.0) (px 0.0) (px 0.0)
    fontFamily [ ] (systemUi :| [ sansSerif ])

  div & byId "board" ? do
    width (px 500.0)
    height (px 500.0)
    border solid (px 1.0) red
    display grid
--     g
-- display: grid;
--   grid-template-columns: repeat(3, 1fr);
--   grid-auto-rows: minmax(100px, auto);
