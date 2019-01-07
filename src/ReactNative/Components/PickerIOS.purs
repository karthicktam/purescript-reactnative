module ReactNative.Components.PickerIOS (
  pickerIOS
)
where

import Prelude

import React (ReactElement)
import ReactNative.Optional (class Optional)
import ReactNative.Components.View (ViewPropsEx)
import ReactNative.Events (UnitEventHandler)
import ReactNative.Unsafe.ApplyProps (unsafeApplyProps)
import ReactNative.Unsafe.Components (pickerIOSU)

type PickerIOSO = ViewPropsEx (
  --  itemStyle :: text styles
   onValueChange :: UnitEventHandler
--  , selectedValue :: any
) () ()
 
pickerIOS :: forall o
  .  Optional o PickerIOSO
  => {|o} -> Array ReactElement -> ReactElement
pickerIOS = pickerIOSU <<< unsafeApplyProps 