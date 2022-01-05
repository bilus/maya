module Main where

import Prelude

import Concur.Core (Widget)
import Concur.React (HTML)
import Concur.React.DOM as D
import Concur.React.Props as P
import Concur.React.Run (runWidgetInDom)
import Control.Monad.Cont (lift)
import Control.Monad.RWS (get, modify_)
import Control.Monad.Rec.Class (forever)
import Control.Monad.State (StateT, runStateT)
import Control.MultiAlternative (orr)
import Data.Array (range)
import Data.Generic.Rep (class Generic)
import Data.Show.Generic (genericShow)
import Draw.Stylesheet (stylesheet)
import Effect (Effect)
import Effect.Class.Console (log)

-- NEXT: Draw board (no images)

type Position = {
  x :: Int, y :: Int
                }

newtype Plant = Plant {
  position :: Position
                      }

type NumCells = Int

board :: forall a. NumCells -> NumCells -> Widget HTML a
board width height =
  let boardStyle =  {"grid-template-columns" : "repeat("<>show width<>",1fr)"}
  in
  D.div [P._id "board", P.style boardStyle]
    $ range 1 (width * height) # map tile
  where tile _ = D.div [P.className "board-tile"] [D.text "O"]



main :: Effect Unit
main = do
  runWidgetInDom "styleroot" $ D.text stylesheet
  runWidgetInDom "app" $ board 10 10
