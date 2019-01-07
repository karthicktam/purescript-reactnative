module ReactNative.Components.DrawerLayoutAndroid (
  DrawerPosition,
  KeyboardDismissMode,
  DrawerLockMode,
  drawerPosition,
  keyboardDismissMode,
  drawerLockMode
) --TODO: this file is also exists in android folder
where

import Prelude

import ReactNative.Optional (class Optional)
import React (ReactElement)
import ReactNative.Components.View (ViewPropsEx)
import ReactNative.Events (UnitEventHandler)
import ReactNative.PropTypes.Color (Color)
import ReactNative.Unsafe.ApplyProps (unsafeApplyProps)
import ReactNative.Unsafe.Components (drawerLayoutAndroidU)


type DrawerLayoutAndroid r = {
  renderNavigationView :: UnitEventHandler
  | r
}

type DrawerLayoutAndroidO = ViewPropsEx (
    onDrawerClose :: UnitEventHandler
  , drawerPosition :: DrawerPosition
  , drawerWidth :: Int
  , keyboardDismissMode :: KeyboardDismissMode
  , drawerLockMode :: DrawerLockMode
  , onDrawerOpen :: UnitEventHandler
  , onDrawerSlide :: UnitEventHandler
--   , onDrawerStateChanged :: Function --TODO: need to  do  this
  , drawerBackgroundColor :: Color
  , statusBarBackgroundColor :: Color
) () ()


drawerLayoutAndroid :: forall o
  .  Optional o DrawerLayoutAndroidO
  => DrawerLayoutAndroid o -> Array ReactElement -> ReactElement
drawerLayoutAndroid = drawerLayoutAndroidU <<< unsafeApplyProps

newtype DrawerPosition = DrawerPosition String
drawerPosition :: {
    left :: DrawerPosition
  , right :: DrawerPosition
}
drawerPosition = {
    left: DrawerPosition "left"
  , right: DrawerPosition "right"
}  --TODO: check this

newtype KeyboardDismissMode = KeyboardDismissMode String
keyboardDismissMode :: {
    none :: KeyboardDismissMode
  , onDrag :: KeyboardDismissMode
}
keyboardDismissMode = {
    none: KeyboardDismissMode "none"
  , onDrag: KeyboardDismissMode "onDrag"
}

newtype DrawerLockMode = DrawerLockMode String
drawerLockMode :: {
    unlocked :: DrawerLockMode
  , lockedClosed :: DrawerLockMode
  , lockedOpen :: DrawerLockMode
}
drawerLockMode = {
    unlocked: DrawerLockMode "unlocked"
  , lockedClosed: DrawerLockMode "lockedClosed"
  , lockedOpen: DrawerLockMode "lockedCpen"
}

