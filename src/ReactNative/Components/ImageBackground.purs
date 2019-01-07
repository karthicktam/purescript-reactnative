module ReactNative.Components.ImageBackground (
  imageBackground
) where

import Prelude

import React (ReactElement)
import ReactNative.Optional (class Optional)
import ReactNative.Styles (Styles)
import ReactNative.Unsafe.ApplyProps (unsafeApplyProps)
import ReactNative.Unsafe.Components (imageBackgroundU)


type ImageBackgroundO = ( style :: Styles )
  --   , style :: view styles
  --   , imageStyle :: image styles
  -- , imageRef :: Ref
  -- ) () ()


imageBackground :: forall o
  .  Optional o ImageBackgroundO
  => {|o} -> Array ReactElement -> ReactElement
imageBackground = imageBackgroundU <<< unsafeApplyProps
