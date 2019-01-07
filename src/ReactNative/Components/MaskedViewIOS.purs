module ReactNative.Components.MaskedViewIOS (
  maskedViewIOS'
)
where

import Prelude

import React (ReactElement)
import ReactNative.Components.View (ViewPropsEx)
import ReactNative.Unsafe.ApplyProps (unsafeApplyProps)
import ReactNative.Unsafe.Components (maskedViewIOSU)

type MaskedViewIOS = ViewPropsEx () () () --(--   maskElement :: element
    --) () ()

maskedViewIOS' :: {|MaskedViewIOS} -> Array ReactElement -> ReactElement
maskedViewIOS' = maskedViewIOSU <<< unsafeApplyProps
