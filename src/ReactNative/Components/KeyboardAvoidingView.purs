module ReactNative.Components.KeyboardAvoidingView (
    BehaviorType, behaviorType, keyboardAvoidingView
)
where

import Prelude

import React (ReactElement)
import ReactNative.Components.View (ViewPropsEx)
import ReactNative.Optional (class Optional)
import ReactNative.Styles (Styles)
import ReactNative.Unsafe.ApplyProps (unsafeApplyProps)
import ReactNative.Unsafe.Components (keyboardAvoidingViewU)
import Type.Data.Boolean (kind Boolean)

type KeyboardAvoidingViewPropsO = ViewPropsEx (
    keyboardVerticalOffset :: Number
  , behavior :: BehaviorType
  , contentContainerStyle :: Styles --TODO: View.style
  , enabled :: Boolean
) () ()


keyboardAvoidingView :: forall o
  .  Optional o KeyboardAvoidingViewPropsO
  => {|o} -> Array ReactElement -> ReactElement
keyboardAvoidingView = keyboardAvoidingViewU <<< unsafeApplyProps


newtype BehaviorType = BehaviorType String
behaviorType :: {
    height :: BehaviorType
  , position :: BehaviorType
  , padding :: BehaviorType
}
behaviorType = {
    height: BehaviorType "height"
  , position: BehaviorType "position"
  , padding: BehaviorType "padding"
}

