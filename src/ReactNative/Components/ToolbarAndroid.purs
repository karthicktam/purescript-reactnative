module ReactNative.Components.ToolbarAndroid (
  toolbarAndroid
) --TODO: this file is also exists in android folder
where

import Prelude

import Ansi.Codes (Color)
import React (ReactElement)
import ReactNative.Events (UnitEventHandler)
import ReactNative.Components.View (ViewPropsEx)
import ReactNative.Optional (class Optional)
import ReactNative.PropTypes (ImageSource)
import ReactNative.Unsafe.ApplyProps (unsafeApplyProps)
import ReactNative.Unsafe.Components (toolbarAndroidU)
import Type.Data.Boolean (kind Boolean)

type ToolbarAndroidO = ViewPropsEx (
   overflowIcon :: ImageSource  --TODO: (optionalImageSource)
 , actions :: Array String  --TODO: check this(array of object: {title: string,icon: optionalImageSource,show: enum('always', 'ifRoom', 'never'),showWithText: bool})
 , contentInsetStart :: Number
 , logo :: ImageSource  --TODO: (optionalImageSource)
 , navIcon :: ImageSource  --TODO: (optionalImageSource)
 , onActionSelected :: UnitEventHandler
 , onIconClicked :: UnitEventHandler
 , contentInsetEnd :: Number
 , rtl :: Boolean
 , subtitle :: String
 , subtitleColor :: Color
 , testID :: String
 , title :: String
 , titleColor :: Color
) () () 
 
toolbarAndroid :: forall o
  .  Optional o ToolbarAndroidO
  => {|o} -> Array ReactElement -> ReactElement
toolbarAndroid = toolbarAndroidU <<< unsafeApplyProps 

