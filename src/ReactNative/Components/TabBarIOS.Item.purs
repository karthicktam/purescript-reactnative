module ReactNative.Components.TabBarIOSItem (
  tabBarIOSItem,
  SystemIcon,
  systemIcon
)
where

import Prelude

import Ansi.Codes (Color)
import React (ReactElement)
import ReactNative.Components.View (ViewPropsEx)
import ReactNative.Events (UnitEventHandler)
import ReactNative.Optional (class Optional)
import ReactNative.PropTypes (ImageSource)
import ReactNative.Styles (Styles)
import ReactNative.Unsafe.ApplyProps (unsafeApplyProps)
import ReactNative.Unsafe.Components (tabBarIOSItemU)
import Type.Data.Boolean (kind Boolean)

type TabBarIOSItemO = ViewPropsEx (
   selected :: Boolean
 , badge :: String   --TODO: check this (string, ,number)
 , icon :: ImageSource
 , onPress :: UnitEventHandler  --TODO: check this
 , renderAsOriginal :: Boolean
 , badgeColor :: Color
 , selectedIcon :: ImageSource
 , style :: Styles --TODO: View.style
 , systemIcon :: SystemIcon
 , title :: String
) () (
    isTVSelectable :: Boolean
) --TODO: Apple Tv only
 
tabBarIOSItem :: forall o
  .  Optional o TabBarIOSItemO
  => {|o} -> Array ReactElement -> ReactElement
tabBarIOSItem = tabBarIOSItemU <<< unsafeApplyProps 


newtype SystemIcon = SystemIcon String
systemIcon :: {
    bookmarks :: SystemIcon
  , contacts :: SystemIcon
  , downloads :: SystemIcon
  , favorites :: SystemIcon
  , featured :: SystemIcon
  , history :: SystemIcon 
  , more :: SystemIcon
  , mostRecent :: SystemIcon
  , mostViewed :: SystemIcon
  , recents :: SystemIcon
  , search :: SystemIcon
  , topRated :: SystemIcon
}
systemIcon = {
    bookmarks: SystemIcon "bookmarks"
  , contacts: SystemIcon "contacts"
  , downloads: SystemIcon "downloads"
  , favorites: SystemIcon "favorites"
  , featured: SystemIcon "featured"
  , history: SystemIcon "history"
  , more: SystemIcon "more"
  , mostRecent: SystemIcon "most-recent"
  , mostViewed: SystemIcon "most-viewed"
  , recents: SystemIcon "recents"
  , search: SystemIcon "search"
  , topRated: SystemIcon "top-rated"                
}