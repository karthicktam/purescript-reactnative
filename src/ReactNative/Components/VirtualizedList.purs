module ReactNative.Components.VirtualizedList (
  virtualizedList, 
  EndReachedEvent, 
  ScrollToIndexFailedEvent, 
  ViewableItemsChangedEvent,
  ViewabilityConfig,
  ViewToken
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
import ReactNative.Unsafe.Components (virtualizedListU)
import Type.Data.Boolean (kind Boolean)
-- import Unsafe.Coerce (unsafeCoerce)


type VirtualizedListProps r = {
    -- renderItem :: Function
  -- , "data" :: any 
    getItem :: {} --TODO: (data: any, index: number) => object;
  , getItemCount :: Number --TODO: (data: any) => number;  --TODO: check this 
  | r
}

type VirtualizedListPropsO = ScrollViewPropsEx (
    debug :: Boolean
  -- , extraData :: any
  , getItemLayout :: String --TODO: ( "data" :: any, index: Number, ) => {length :: Number, offset: Number, index: Number}
  , initialScrollIndex :: Number
  , inverted :: Boolean --TODO: check this (Reverses the direction of scroll. Uses scale transforms of -1.)
  , "CellRendererComponent" :: UnitEventHandler  --TODO: component, function
  , "ListEmptyComponent" :: UnitEventHandler --TODO: component, function, element
  , "ListFooterComponent" :: UnitEventHandler --TODO: component, function, element
  , "ListHeaderComponent" :: UnitEventHandler --TODO: component, function, element
  , onLayout :: UnitEventHandler
  , onRefresh :: UnitEventHandler --TODO: check this
  , onScrollToIndexFailed :: ScrollToIndexFailedEvent
  , onViewableItemsChanged :: ViewableItemsChangedEvent
  , refreshing :: Boolean
  , removeClippedSubviews :: Boolean
  -- , renderScrollComponent :: (props: object) => element;
  , viewabilityConfig :: ViewabilityConfig --TODO: check this
  , viewabilityConfigCallbackPairs :: Array ViewabilityConfigCallbackPair --TODO: array of ViewabilityConfigCallbackPair
  , horizontal :: Boolean
  , initialNumToRender :: Number
  , keyExtractor :: String --TODO: (item: object, index: number) => string;
  , maxToRenderPerBatch :: Number
  , onEndReached :: EndReachedEvent --TODO: (info: {distanceFromEnd: number}) => void
  , onEndReachedThreshold :: Number
  , updateCellsBatchingPeriod :: Number
  , windowSize :: Number
  -- , disableVirtualization :: DEPRECATED
  , android :: {
      progressViewOffset :: Number
    }
) --(
--     progressViewOffset :: Number
-- ) ()


virtualizedList :: forall o
  .  Optional o VirtualizedListPropsO
  => VirtualizedListProps o -> Array ReactElement -> ReactElement
virtualizedList = virtualizedListU <<< unsafeApplyProps


type EndReachedEvent = {
  info :: {
      distanceFromEnd :: Number
  }
}   --TODO: check this

type ScrollToIndexFailedEvent = {
  info :: {
      index :: Number
    , highestMeasuredFrameIndex :: Number
    , averageItemLength :: Number
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

type ViewabilityConfig = {
      minimumViewTime :: Number
    , viewAreaCoveragePercentThreshold :: Number
    , itemVisiblePercentThreshold :: Number
    , waitForInteraction :: Boolean
}   --TODO: check this

type ViewabilityConfigCallbackPair = {
    viewabilityConfig :: ViewabilityConfig
  , onViewableItemsChanged :: ViewableItemsChangedEvent
}