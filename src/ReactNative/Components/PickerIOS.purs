module ReactNative.Components.PickerIOS (
  pickerIOS, pickerIOS', PickerItem, class PickerIOSType, PickerIOS
) --TODO: check this cmponent fully
where

import Prelude

import React (ReactElement)
import ReactNative.Components.View (ViewPropsEx)
import ReactNative.Events (UnitEventHandler)
import ReactNative.Optional (class Optional)
import ReactNative.Styles (Styles)
import ReactNative.Unsafe.ApplyProps (unsafeApplyProps)
import ReactNative.Unsafe.Components (pickerIOSU)
import Unsafe.Coerce (unsafeCoerce)

type PickerIOS a = ViewPropsEx (
   itemStyle :: Styles  --TODO: check this
 , onValueChange :: UnitEventHandler
 , selectedValue :: a
) () ()
 
pickerIOS :: forall a. PickerIOSType a => a -> Array PickerItem -> ReactElement
pickerIOS selectedValue item = pickerIOSU {selectedValue} (unsafeCoerce item)

newtype PickerItem = PickerItem ReactElement
class PickerIOSType a

-- pickerIOS :: forall o
--   .  Optional o PickerIOSO
--   => {|o} -> Array ReactElement -> ReactElement
-- pickerIOS = pickerIOSU <<< unsafeApplyProps 

pickerIOS' :: forall a o
  .  PickerIOSType a
  => Optional o (PickerIOS a)
  => {|o} -> Array PickerItem -> ReactElement
pickerIOS' p item = pickerIOSU (unsafeApplyProps p) $ unsafeCoerce item