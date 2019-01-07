module ReactNative.Components.MaskedViewIOS (
  maskedViewIOS',
  -- maskedViewIOS 
  MaskElement
)
where

import Prelude

import React (ReactElement)
import ReactNative.Components.View (ViewPropsEx)
import ReactNative.Unsafe.ApplyProps (unsafeApplyProps)
import ReactNative.Unsafe.Components (maskedViewIOSU)

type MaskedViewIOS r = {
  maskElement :: MaskElement
  | r
}

type MaskedViewIOSO = ViewPropsEx () () () --(--   maskElement :: element
    --) () ()

newtype MaskElement = MaskElement ReactElement

maskedViewIOS' :: {|MaskedViewIOSO} -> Array ReactElement -> ReactElement
maskedViewIOS' = maskedViewIOSU <<< unsafeApplyProps

-- maskedViewIOS :: forall o
--   .  Optional o MaskedViewIOSO
--   => MaskedViewIOS o -> Array ReactElement -> ReactElement
-- maskedViewIOS = MaskElement <<< maskedViewIOSU <<< unsafeApplyProps