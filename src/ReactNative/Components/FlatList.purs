module ReactNative.Components.FlatList (
  flatList, 
  EndReachedEvent,
  ViewabilityConfig,
  ViewableItemsChangedEvent,
  ViewToken

)
where

import Prelude

import React (ReactElement)
import ReactNative.Components.ScrollView (ScrollViewPropsEx)
import ReactNative.Events (UnitEventHandler)
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
    -- props :: VirtualizedList   --TODO: change that
  -- , ItemSeparatorComponent :: { flat :: FlatList | props } -> ReactElement --TODO: Component
  -- , "ListEmptyComponent" :: UnitEventHandler --TODO: component, function, element
  -- , "ListFooterComponent" :: UnitEventHandler --TODO: component, function, element
  -- , "ListHeaderComponent" :: UnitEventHandler --TODO: component, function, element
  -- , columnWrapperStyle :: style object
  -- , extraData :: any
  -- getItemLayout :: (data, index) => {length :: Number, offset :: Number, index :: Number}
   horizontal :: Boolean
  , initialNumToRender :: Number
  , initialScrollIndex :: Number
  , inverted :: Boolean
  -- , keyExtractor :: (item: object, index: number) => string;
  , numColumns :: Number
  , onEndReached :: EndReachedEvent --TODO: (info: {distanceFromEnd: number}) => void
  , onEndReachedThreshold :: Number
  , onRefresh :: UnitEventHandler --TODO: check this
  , onViewableItemsChanged :: ViewableItemsChangedEvent --TODO: (info: { viewableItems: array, changed: array, }) => void
  , legacyImplementation :: Boolean
  , refreshing :: Boolean
  , removeClippedSubviews :: Boolean
  , viewabilityConfig :: ViewabilityConfig --TODO: check this
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

type EndReachedEvent = {
  info :: {
      distanceFromEnd :: Number
  }
}   --TODO: check this

type ViewabilityConfig = {
      minimumViewTime :: Number
    , viewAreaCoveragePercentThreshold :: Number
    , itemVisiblePercentThreshold :: Number
    , waitForInteraction :: Boolean
}   --TODO: check this
