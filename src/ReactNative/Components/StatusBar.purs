module ReactNative.Components.StatusBar (
  statusBar,
  BarStyleType,
  ShowHideTransition,
  barStyleType,
  showHideTransition
)
where

import Prelude

import Ansi.Codes (Color)
import React (ReactElement)
import ReactNative.Optional (class Optional)
import ReactNative.Unsafe.ApplyProps (unsafeApplyProps)
import ReactNative.Unsafe.Components (statusBarU)
import Type.Data.Boolean (kind Boolean)

type StatusBarO = 
 ( 
   animated :: Boolean
 , barStyle :: BarStyleType
 , hidden :: Boolean
 , android :: {
      backgroundColor :: Color
    , translucent :: Boolean  
    }
  , ios :: {
      networkActivityIndicatorVisible :: Boolean  
    , showHideTransition :: ShowHideTransition  
    }
) 
 
statusBar :: forall o
  .  Optional o StatusBarO
  => {|o} -> ReactElement
statusBar = statusBarU <<< unsafeApplyProps 

newtype BarStyleType = BarStyleType String
barStyleType :: {
    default :: BarStyleType
  , lightContent :: BarStyleType
  , darkContent :: BarStyleType
}
barStyleType = {
    default: BarStyleType "default"
  , lightContent: BarStyleType "light-content"
  , darkContent: BarStyleType "dark-content"
}

newtype ShowHideTransition = ShowHideTransition String
showHideTransition :: {
    fade :: ShowHideTransition
  , slide :: ShowHideTransition
}
showHideTransition = {
    fade: ShowHideTransition "fade"
  , slide: ShowHideTransition "slide"
}