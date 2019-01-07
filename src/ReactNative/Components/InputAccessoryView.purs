module ReactNative.Components.InputAccessoryView (
  inputAccessoryView
)
where

import Prelude

import React (ReactElement)
import ReactNative.Optional (class Optional)
import ReactNative.PropTypes.Color (Color)
import ReactNative.Styles (Styles)
import ReactNative.Unsafe.ApplyProps (unsafeApplyProps)
import ReactNative.Unsafe.Components (inputAccessoryViewU)

type InputAccessoryViewO = 
  ( backgroundColor :: Color
  , nativeID :: String
  , style :: Styles
  )

inputAccessoryView :: forall o
  .  Optional o InputAccessoryViewO
  => {|o} -> Array ReactElement -> ReactElement
inputAccessoryView = inputAccessoryViewU <<< unsafeApplyProps
