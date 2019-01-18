module ReactNative.Android.API where

import Prelude
import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn2, runEffectFn2)

foreign import backAndroidAddListener :: EffectFn2 String (EffectFn1 Unit Boolean) Unit
foreign import backAndroidRemoveListener :: EffectFn2 String (EffectFn1 Unit Boolean) Unit --TODO: check this
foreign import exitApp :: Int -> Effect Unit

addBackEventCallback :: EffectFn1 Unit Boolean -> Effect Unit
addBackEventCallback = runEffectFn2 backAndroidAddListener "hardwareBackPress"

removeBackEventCallback :: EffectFn1 Unit Boolean -> Effect Unit
removeBackEventCallback = runEffectFn2 backAndroidRemoveListener "hardwareBackPress"  --TODO: check this


foreign import backAndroid_exitApp             :: forall e.Eff e Unit
foreign import backAndroid_addEventListener    ::forall e eventName handler . eventName -> handler -> Eff e Unit
foreign import backAndroid_removeEventListener ::forall e eventName handler . eventName -> handler -> Eff e Unit


