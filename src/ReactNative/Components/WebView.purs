module ReactNative.Components.WebView (
  webView,
  DataDetectorType,
  dataDetectorType
)
where

import Prelude

import React (ReactElement)
import ReactNative.Components.View (ViewPropsEx)
import ReactNative.Events (UnitEventHandler)
import ReactNative.Optional (class Optional)
import ReactNative.Unsafe.ApplyProps (unsafeApplyProps)
import ReactNative.Unsafe.Components (webViewU)
import Type.Data.Boolean (kind Boolean)
import Unsafe.Coerce (unsafeCoerce)


type WebViewPropsO = ViewPropsEx (
    -- source :: Object
    automaticallyAdjustContentInsets :: Boolean
  , injectJavaScript :: UnitEventHandler  --TODO: check thhis
  , injectedJavaScript :: String
  , mediaPlaybackRequiresUserAction :: Boolean
  , nativeConfig :: {}  --TODO: The nativeConfig prop expects an object with the following keys: component (any), props (object), viewManager (object)
  , onError :: UnitEventHandler
  , onLoad :: UnitEventHandler
  , onLoadEnd :: UnitEventHandler
  , onLoadStart :: UnitEventHandler
  -- , onMessage :: Function --TODO: check this
  , onNavigationStateChange :: UnitEventHandler --TODO: check this
  , originWhitelist :: Array String -- TODO: check this it is "array of strings"
  , renderError :: UnitEventHandler  --TODO: check this
  , renderLoading :: UnitEventHandler --TODO: check this
  , scalesPageToFit :: Boolean
  , startInLoadingState :: Boolean
  , url :: String
  , html :: String
) (
    progressViewOffset :: Number
  , domStorageEnabled :: Boolean
  , javaScriptEnabled :: Boolean
  , mixedContentMode :: String
  , thirdPartyCookiesEnabled :: Boolean
  , userAgent :: String
  , geolocationEnabled :: Boolean
  , allowUniversalAccessFromFileURLs :: Boolean
) (
    -- onShouldStartLoadWithRequest :: Function  --TODO: check this
    decelerationRate :: Number
  , allowsInlineMediaPlayback :: Boolean
  , bounces :: Boolean
  , contentInset :: {top :: Number, left :: Number, bottom :: Number, right :: Number}
  , dataDetectorTypes :: DataDetectorType --TODO: string, or array
  , scrollEnabled :: Boolean
  , useWebKit :: Boolean
)

webView :: forall o
  .  Optional o WebViewPropsO
  => {|o} -> ReactElement
webView = webViewU <<< unsafeApplyProps


newtype DataDetectorType = DataDetectorType String

dataDetectorType :: {
    phoneNumber :: DataDetectorType
  , link :: DataDetectorType
  , address :: DataDetectorType
  , calendarEvent :: DataDetectorType
  , none :: DataDetectorType
  , all :: DataDetectorType
}
dataDetectorType = {
    phoneNumber: DataDetectorType "phoneNumber"
  , link: DataDetectorType "link"
  , address: DataDetectorType "address"
  , calendarEvent: DataDetectorType "calendarEvent"
  , none: DataDetectorType "none"
  , all: DataDetectorType "all"
}

dataDetectors :: Array DataDetectorType -> DataDetectorType
dataDetectors = unsafeCoerce

