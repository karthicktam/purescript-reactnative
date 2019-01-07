module ReactNative.Components.VirtualizedList (
  virtualizedList
)
where

import Prelude

import Data.Foldable (any)
import React (ReactElement)
import ReactNative.Components.ScrollView (ScrollViewPropsEx)
import ReactNative.Events (UnitEventHandler)
import ReactNative.Optional (class Optional)
import ReactNative.PropTypes.Color (Color)
import ReactNative.Unsafe.ApplyProps (unsafeApplyProps)
import ReactNative.Unsafe.Components (virtualizedListU)
import Type.Data.Boolean (kind Boolean)
import Unsafe.Coerce (unsafeCoerce)


type VirtualizedListProps r = {
    -- renderItem :: Function
  -- , "data" :: any 
  -- , getItem :: Function
  -- , getItemCount :: Function  --TODO: check this 
  | r
}

type VirtualizedListPropsO = ScrollViewPropsEx (
    debug :: Boolean
  -- , extraData :: any
  -- , getItemLayout :: Function
  , initialScrollIndex :: Number
  , inverted :: Boolean
--   , CellRendererComponent :: component, function
--   , ListEmptyComponent :: component, function, element
--   , ListFooterComponent :: component, function, element
--   , ListHeaderComponent :: component, function, element
  , onLayout :: UnitEventHandler
--   , onRefresh :: Function
--   , onScrollToIndexFailed :: Function
--   , onViewableItemsChanged :: Function
  , refreshing :: Boolean
  , removeClippedSubviews :: Boolean
--   , renderScrollComponent :: Function
--   , viewabilityConfig :: ViewabilityConfig
  -- , viewabilityConfigCallbackPairs :: array of ViewabilityConfigCallbackPair
  , horizontal :: Boolean
  , initialNumToRender :: Number
--   , keyExtractor :: Function
  , maxToRenderPerBatch :: Number
--   , onEndReached :: Function
  , onEndReachedThreshold :: Number
  , updateCellsBatchingPeriod :: Number
  , windowSize :: Number
--   , disableVirtualization :: DEPRECATED
  , android :: {
      progressViewOffset :: Number
    }
) --(
--     progressViewOffset :: Number
-- ) ()

-- | Create an ActivityIndicator with props and the `animating` flag
virtualizedList :: forall o
  .  Optional o VirtualizedListPropsO
  => VirtualizedListProps o -> Array ReactElement -> ReactElement
virtualizedList = virtualizedListU <<< unsafeApplyProps
