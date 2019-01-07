module ReactNative.Components.SectionList (
  sectionList
)
where

import Prelude

-- import Data.Foldable (any)
import React (ReactElement)
import ReactNative.Components.ScrollView (ScrollViewPropsEx)
import ReactNative.Events (UnitEventHandler)
import ReactNative.Optional (class Optional)
-- import ReactNative.PropTypes.Color (Color)
import ReactNative.Unsafe.ApplyProps (unsafeApplyProps)
import ReactNative.Unsafe.Components (sectionListU)
import Type.Data.Boolean (kind Boolean)


type SectionListProps r = {
    -- sections :: array of Sections --TODO: check this
    initialNumToRender :: Number   
  -- , keyExtractor :: (item :: Item, index :: Number) => String  
  -- , renderItem :: Function
  | r
}

type SectionListPropsO = ScrollViewPropsEx (
    -- onEndReached :: [(info: {distanceFromEnd: number}) => void]   --TODO: change that
    -- extraData :: any
--   , ItemSeparatorComponent :: component, function, element
    inverted :: Boolean
--   , ListFooterComponent :: component, function, element
  , legacyImplementation :: Boolean
--   , ListEmptyComponent :: component, function, element
  , onEndReachedThreshold :: Number
  , onRefresh :: UnitEventHandler -- TODO: [() => void]
  -- , onViewableItemsChanged :: Function  --TODO: check this
  , refreshing :: Boolean
  , removeClippedSubviews :: Boolean
--   , ListHeaderComponent :: component, function, element
--   , renderSectionFooter :: [(info: {section: SectionT}) => ?React.Element]
--   , renderSectionHeader :: [(info: {section: SectionT}) => ?React.Element]
--   , SectionSeparatorComponent :: [ReactClass]
  , stickySectionHeadersEnabled :: Boolean
) --() ()


sectionList :: forall o
  .  Optional o SectionListPropsO
  => SectionListProps o -> Array ReactElement -> ReactElement
sectionList = sectionListU <<< unsafeApplyProps
