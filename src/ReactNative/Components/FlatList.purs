module ReactNative.Components.FlatList (
  flatList
)
where

import Prelude

import React (ReactElement)
import ReactNative.Components.ScrollView (ScrollViewPropsEx)
import ReactNative.Optional (class Optional)
import ReactNative.Unsafe.ApplyProps (unsafeApplyProps)
import ReactNative.Unsafe.Components (flatListU)
import Type.Data.Boolean (kind Boolean)


type FlatListProps r = {
    -- renderItem :: Function
    "data" :: Array String   --TODO: check this
    | r
  }

type FlatListPropsO = ScrollViewPropsEx (
  --     props :: VirtualizedList   --TODO: change that
  --   , ItemSeparatorComponent :: Component
  --   , ListEmptyComponent :: component, function, element
  --   , ListFooterComponent :: component, function, element
  --   , ListHeaderComponent :: component, function, element
  --   , columnWrapperStyle :: style object
  --   , extraData :: any
  -- getItemLayout :: Function
  horizontal :: Boolean
  , initialNumToRender :: Number
  , initialScrollIndex :: Number
  , inverted :: Boolean
  -- , keyExtractor :: Function
  , numColumns :: Number
  -- , onEndReached :: Function
  , onEndReachedThreshold :: Number
  -- , onRefresh :: Function
  -- , onViewableItemsChanged :: Function
  , legacyImplementation :: Boolean
  , refreshing :: Boolean
  , removeClippedSubviews :: Boolean
  --   , viewabilityConfig :: ViewabilityConfig
  -- , viewabilityConfigCallbackPairs :: array of ViewabilityConfigCallbackPair
  , android :: {
      progressViewOffset :: Number
    }
  ) 
  -- (
  --   progressViewOffset :: Number
  -- ) ()

flatList :: forall o
  .  Optional o FlatListPropsO
  => FlatListProps o -> Array ReactElement -> ReactElement
flatList = flatListU <<< unsafeApplyProps
