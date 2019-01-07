module ReactNative.Components.SegmentedControlIOS (
  segmentedControlIOS
)
where

import Prelude

import ReactNative.Optional (class Optional)
import ReactNative.Events (UnitEventHandler)
import React (ReactElement)
import ReactNative.Components.View (ViewPropsEx)
import ReactNative.Unsafe.ApplyProps (unsafeApplyProps)
import ReactNative.Unsafe.Components (segmentedControlIOSU)
import Type.Data.Boolean (kind Boolean)

type SegmentedControlIOSO = ViewPropsEx (
   enabled :: Boolean
 , momentary :: Boolean
 , onChange :: UnitEventHandler
 , onValueChange :: UnitEventHandler
 , selectedIndex :: Number
 , tintColor :: String
 , values :: Array String
) () ()
 
segmentedControlIOS :: forall o
  .  Optional o SegmentedControlIOSO
  => {|o} -> ReactElement
segmentedControlIOS = segmentedControlIOSU <<< unsafeApplyProps 

