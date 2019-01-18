module ReactNative.Components.SectionList (
  sectionList, 
  EndReachedEvent,
  ViewableItemsChangedEvent,
  ViewToken
)
where

import Prelude

import React (ReactElement)
-- import React (ReactClass, ReactElement)
import ReactNative.Components.ScrollView (ScrollViewPropsEx)
import ReactNative.Events (UnitEventHandler)
import ReactNative.Optional (class Optional)
import ReactNative.Unsafe.ApplyProps (unsafeApplyProps)
import ReactNative.Unsafe.Components (sectionListU)
import Type.Data.Boolean (kind Boolean)


type SectionListProps r = {
    -- sections :: array of Sections --TODO: check this
    initialNumToRender :: Number   
  , keyExtractor :: String --TODO: (item :: Item, index :: Number) => String  
  -- , renderItem :: Function
  | r
}

type SectionListPropsO = ScrollViewPropsEx (
    onEndReached :: EndReachedEvent --TODO: [(info: {distanceFromEnd: number}) => void]   --TODO: change that
    -- extraData :: any
  -- , ItemSeparatorComponent :: component, function, element
  , inverted :: Boolean
  , "ListFooterComponent" :: UnitEventHandler --TODO: component, function, element
  , legacyImplementation :: Boolean
  , "ListEmptyComponent" :: UnitEventHandler --TODO: component, function, element
  , onEndReachedThreshold :: Number
  , onRefresh :: UnitEventHandler -- TODO: [() => void]
  , onViewableItemsChanged :: ViewableItemsChangedEvent  --TODO: check this
  , refreshing :: Boolean
  , removeClippedSubviews :: Boolean
  , "ListHeaderComponent" :: UnitEventHandler --TODO: component, function, element
  -- , renderSectionFooter :: [(info: {section: SectionT}) => ?React.Element]
  -- , renderSectionHeader :: [(info: {section: SectionT}) => ?React.Element]
  -- , SectionSeparatorComponent :: ReactClass
  , stickySectionHeadersEnabled :: Boolean
) --() ()


sectionList :: forall o
  .  Optional o SectionListPropsO
  => SectionListProps o -> Array ReactElement -> ReactElement
sectionList = sectionListU <<< unsafeApplyProps

type EndReachedEvent = {
  info :: {
      distanceFromEnd :: Number
  }
}   --TODO: check this

type ViewableItemsChangedEvent = {
  info :: {
    --   viewableItems :: Array String
    -- , changed :: Array String
      viewableItems :: Array ViewToken 
    , changed :: Array ViewToken
  }
}   --TODO: check this

type ViewToken = {
    item :: String --TODO: any
  , key :: String
  , index :: Number
  , isViewable :: Boolean
  , section :: String --TODO: any
}