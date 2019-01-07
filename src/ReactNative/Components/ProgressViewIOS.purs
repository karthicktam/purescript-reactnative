module ReactNative.Components.ProgressViewIOS (
  progressViewIOS,
  ProgressViewStyle,
  progressViewStyle
)
where

import Prelude

import React (ReactElement)
import ReactNative.Components.View (ViewPropsEx)
import ReactNative.Optional (class Optional)
import ReactNative.PropTypes (ImageSource)
import ReactNative.Unsafe.ApplyProps (unsafeApplyProps)
import ReactNative.Unsafe.Components (progressViewIOSU)

type ProgressViewIOSPropsO = ViewPropsEx (
   progress :: Number
 , progressImage :: ImageSource --TODO: check ImageSource is fit or not here
 , progressTintColor :: String
 , progressViewStyle :: ProgressViewStyle
 , trackImage :: ImageSource
 , trackTintColor :: String
) () ()
 
progressViewIOS :: forall o
  .  Optional o ProgressViewIOSPropsO
  => {|o} -> ReactElement
progressViewIOS = progressViewIOSU <<< unsafeApplyProps 

newtype ProgressViewStyle = ProgressViewStyle String
progressViewStyle :: {
    default :: ProgressViewStyle
  , bar :: ProgressViewStyle
}
progressViewStyle = {
    default: ProgressViewStyle "default"
  , bar: ProgressViewStyle "bar"
}