module ReactNative.Components.ProgressBarAndroid (
  StyleAttrType,
  styleAttrType,
  progressBarAndroid
)
where

import Prelude

import Ansi.Codes (Color)
import ReactNative.Optional (class Optional)
import React (ReactElement)
import ReactNative.Components.View (ViewPropsEx)
import ReactNative.Unsafe.ApplyProps (unsafeApplyProps)
import ReactNative.Unsafe.Components (progressBarAndroidU)
import Type.Data.Boolean (kind Boolean)

type ProgressBarAndroidO = ViewPropsEx (
   animating :: Boolean
 , color :: Color
--  , indeterminate :: indeterminateType
 , progress :: Number
 , styleAttr :: StyleAttrType
 , testID :: String
) () ()
 
progressBarAndroid :: forall o
  .  Optional o ProgressBarAndroidO
  => {|o} -> ReactElement
progressBarAndroid = progressBarAndroidU <<< unsafeApplyProps

newtype StyleAttrType = StyleAttrType String
styleAttrType :: {
    horizontal :: StyleAttrType
  , normal :: StyleAttrType
  , small :: StyleAttrType
  , large :: StyleAttrType
  , inverse :: StyleAttrType
  , smallInverse :: StyleAttrType
  , largeInverse :: StyleAttrType
}
styleAttrType = {
    horizontal: StyleAttrType "horizontal"
  , normal: StyleAttrType "normal"
  , small: StyleAttrType "small"
  , large: StyleAttrType "large"
  , inverse: StyleAttrType "inverse"
  , smallInverse: StyleAttrType "smallInverse"
  , largeInverse: StyleAttrType "largeInverse"       
}