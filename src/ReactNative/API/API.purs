module ReactNative.API (
  alert
, keyboardDismiss
, registerComponent
, accessibilityInfo_fetch
) where

import Data.Function.Uncurried (Fn4, runFn4)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toNullable)
import Data.Unit (Unit)
import Effect (Effect)
import React (ReactClass)
import React.SyntheticEvent (location)
import ReactNative.Components.ListView (listViewDataSource)

foreign import alertImpl :: forall b o. Fn4 String (Nullable String) b o (Effect Unit)

alert :: String -> Maybe String -> Effect Unit
alert s ms = runFn4 alertImpl s (toNullable ms) [] {}

foreign import keyboardDismiss :: Effect Unit

foreign import registerComponent :: forall props. String -> ReactClass props -> Effect Unit


-- KARTHICK RAJAN --code

--accessibilityInfo

foreign import accessibilityInfo_fetch :: forall e. Effect e Unit

foreign import accessibilityInfo_addEventListener :: forall e eventName handler. eventName -> handler -> Effect e Unit

foreign import accessibilityInfo_setAccessibilityFocus :: forall e reactTag. reactTag -> Effect e Unit

foreign import accessibilityInfo_announceForAccessibility :: forall e announcement. announcement -> Effect e Unit

foreign import accessibilityInfo_removeEventListener :: forall e eventName handler. eventName -> handler -> Effect e Unit

--animated

foreign import animated_subtract :: forall e a b. a -> b -> Effect e Unit

foreign import animated_loop :: forall e animation config. animation -> config -> Effect e Unit

foreign import animated_forkEvent :: forall e event listener. event -> listener -> Effect e Unit

foreign import animated_unforkEvent :: forall e event listener. event -> listener -> Effect e Unit

--AppRegistry

foreign import appRegistry_setWrapperComponentProvider :: forall e provider. provider -> Effect e Unit

foreign import appRegistry_registerSection :: forall e appKey component. appKey -> component -> Effect e Unit

foreign import appRegistry_getSectionKeys :: forall e. Effect e Unit

foreign import appRegistry_getSections :: forall e. Effect e Unit

foreign import appRegistry_getRunnable :: forall e. Effect e Unit

foreign import appRegistry_getRegistry :: forall e. Effect e Unit

foreign import appRegistry_setComponentProviderInstrumentationHook :: forall e hook. hook -> Effect e Unit

-- Dimensions

foreign import dimensions_addEventListener :: forall e type' handler. type' -> handler -> Effect e Unit

foreign import dimensions_removeEventListener :: forall e type' handler. type' -> handler -> Effect e Unit

-- Geolocation

foreign import geolocation_setRNConfiguration :: forall e config. config -> Effect e Unit

foreign import geolocation_requestAuthorization :: forall e. Effect e Unit

-- layoutAnimation

foreign import layoutAnimation_checkConfig :: forall e config location name. config -> location -> name -> Effect e Unit

-- Linking

foreign import linking_constructor :: forall e. Effect e Unit

-- ListViewDataSource

foreign import listViewDataSource_constructor :: forall e params. params -> Effect e Unit

foreign import listViewDataSource_cloneWithRows :: forall e dataBlob rowIdentities. dataBlob -> rowIdentities -> Effect e Unit

foreign import listViewDataSource_cloneWithRowsAndSections :: forall e dataBlob sectionIdentities rowIdentities. dataBlob -> sectionIdentities -> rowIdentities -> Effect e Unit

foreign import listViewDataSource_getRowCount :: forall e. Effect e Unit

foreign import listViewDataSource_getRowAndSectionCount :: forall e. Effect e Unit

foreign import listViewDataSource_rowShouldUpdate :: forall e sectionIndex rowIndex. sectionIndex -> rowIndex -> Effect e Unit

foreign import listViewDataSource_getRowData :: forall e sectionIndex rowIndex. sectionIndex -> rowIndex -> Effect e Unit

foreign import listViewDataSource_getRowIDForFlatIndex :: forall e index. index -> Effect e Unit

foreign import listViewDataSource_getSectionIDForFlatIndex :: forall e index. index -> Effect e Unit

foreign import listViewDataSource_getSectionLengths :: forall e. Effect e Unit

foreign import listViewDataSource_sectionHeaderShouldUpdate :: forall e sectionIndex. sectionIndex -> Effect e Unit

foreign import listViewDataSource_getSectionHeaderData :: forall e sectionIndex. sectionIndex -> Effect e Unit

-- NetInfo

foreign import netInfo_getConnectionInfo :: forall e. Effect e Unit

-- PermissionsAndroid

foreign import permissionsAndroid_constructor :: forall e. Effect e Unit

foreign import permissionsAndroid_check :: forall e. String -> Effect e Unit

foreign import permissionsAndroid_request :: forall e rationale. String -> rationale -> Effect e Unit

foreign import permissionsAndroid_requestMultiple :: forall e. Array String -> Effect e Unit

-- PushNotificationIOS

foreign import pushNotificationIOS_removeAllDeliveredNotifications :: forall e. Eff e Unit

foreign import pushNotificationIOS_constructor :: forall e nativeNotif. nativeNotif -> Effect e Unit

foreign import pushNotificationIOS_finish :: forall e fetchResult. fetchResult -> Effect e Unit

foreign import pushNotificationIOS_getContentAvailable :: forall e. Eff e Unit

-- Share

foreign import share_share :: forall e content options. content -> options -> Effect e Unit

foreign import share_sharedAction :: forall e. Eff e Unit

foreign import share_dismissedAction :: forall e. Eff e Unit

-- StyleSheet

foreign import styleSheet_setStyleAttributePreprocessor :: forall e property process. property -> process -> Effect e Unit

foreign import styleSheet_flatten :: forall e style. style -> Effect e Unit

--systrace

foreign import systrace_installReactHook :: forall e. useFiber -> Effect e Unit

foreign import systrace_isEnabled :: forall e. Effect e Unit

-- ToastAndroid

data Duration = SHORT | LONG
data Gravity = TOP | BOTTOM | CENTER

foreign import toastAndroid_showWithGravityAndOffset :: forall e. String -> Duration -> Gravity -> xOffset -> yOffset -> Effect e Unit

-- VibrationIOS

foreign import vibrationIOS_vibrate :: forall e. Effect e Unit
