module ReactNative.Components.TabBarIOS (
  tabBarIOS,
  BarStyleType,
  ItemPositioning,
  barStyleType,
  itemPositioning
)
where

import Prelude

import Ansi.Codes (Color)
import React (ReactElement)
import ReactNative.Components.View (ViewPropsEx)
import ReactNative.Optional (class Optional)
import ReactNative.Styles (Styles)
import ReactNative.Unsafe.ApplyProps (unsafeApplyProps)
import ReactNative.Unsafe.Components (tabBarIOSU)
import Type.Data.Boolean (kind Boolean)

type TabBarIOSO = ViewPropsEx (
   barStyle :: BarStyleType
 , barTintColor :: Color
 , itemPositioning :: ItemPositioning
 , style :: Styles --TODO: (View.style) 
 , tintColor :: Color
 , translucent :: Boolean
 , unselectedItemTintColor :: Color
 , unselectedTintColor :: Color
) () ()
 
tabBarIOS :: forall o
  .  Optional o TabBarIOSO
  => {|o} -> Array ReactElement -> ReactElement
tabBarIOS = tabBarIOSU <<< unsafeApplyProps 

newtype BarStyleType = BarStyleType String
barStyleType :: {
    default :: BarStyleType
  , black :: BarStyleType
}
barStyleType = {
    default: BarStyleType "default"
  , black: BarStyleType "black"
}

newtype ItemPositioning = ItemPositioning String
itemPositioning :: {
    fill :: ItemPositioning
  , center :: ItemPositioning
  , auto :: ItemPositioning 
}
itemPositioning = {
    fill: ItemPositioning "fill"
  , center: ItemPositioning "center"
  , auto: ItemPositioning "auto"    
}