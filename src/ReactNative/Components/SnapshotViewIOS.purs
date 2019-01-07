module ReactNative.Components.SnapshotViewIOS (
  snapshotViewIOS
)
where

import Prelude

import React (ReactElement)
import ReactNative.Components.View (ViewPropsEx)
import ReactNative.Events (UnitEventHandler)
import ReactNative.Optional (class Optional)
import ReactNative.Unsafe.ApplyProps (unsafeApplyProps)
import ReactNative.Unsafe.Components (snapshotViewIOSU)

type SnapshotViewIOSO = ViewPropsEx (
   onSnapshotReady :: UnitEventHandler
 , testIdentifier :: String
) () ()
 
snapshotViewIOS :: forall o
  .  Optional o SnapshotViewIOSO
  => {|o} -> ReactElement
snapshotViewIOS = snapshotViewIOSU <<< unsafeApplyProps 

