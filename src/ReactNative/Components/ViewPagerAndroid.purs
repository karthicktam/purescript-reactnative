module ReactNative.Components.ViewPagerAndroid (
  viewPagerAndroid,
  KeyboardDismissMode,
  keyboardDismissMode
)
where

import Prelude

import React (ReactElement)
import ReactNative.Components.View (ViewPropsEx)
import ReactNative.Optional (class Optional)
import ReactNative.Unsafe.ApplyProps (unsafeApplyProps)
import ReactNative.Unsafe.Components (viewPagerAndroidU)
import Type.Data.Boolean (kind Boolean)


type ViewPagerAndroid r = {
    setPage :: Number
  , setPageWithoutAnimation :: Number
  | r
}

type ViewPagerAndroidO = ViewPropsEx (
    initialPage :: Number
  , keyboardDismissMode :: KeyboardDismissMode
  -- , onPageScroll :: Function
  -- , onPageScrollStateChanged :: Function
  -- , onPageSelected :: Function
  , pageMargin :: Number 
  , peekEnabled :: Boolean
  , scrollEnabled :: Boolean
) () ()

viewPagerAndroid :: forall o
  .  Optional o ViewPagerAndroidO
  => ViewPagerAndroid o -> Array ReactElement -> ReactElement
viewPagerAndroid = viewPagerAndroidU <<< unsafeApplyProps

newtype KeyboardDismissMode = KeyboardDismissMode String
keyboardDismissMode :: {
    none :: KeyboardDismissMode
  , onDrag :: KeyboardDismissMode
}
keyboardDismissMode = {
    none: KeyboardDismissMode "none"
  , onDrag: KeyboardDismissMode "on-drag"
}

