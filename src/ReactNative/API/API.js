const RN = require("react-native")

exports.alertImpl = function (t, msg, buttons, opts) {
  return function () {
    RN.Alert.alert(t, msg, buttons, opts);
  }
}

exports.registerComponent = function (name) {
  return function (component) {
    return function () {
      RN.AppRegistry.registerComponent(name, function () { return component; });
    }
  }
}

exports.keyboardDismiss = function () {
  RN.Keyboard.dismiss();
}



//KARthick RAJAN --code

//accessibilityInfo

var accessibilityInfo = require('react-native').AccessibilityInfo;

var accessibilityInfo_fetch = accessibilityInfo.fetch;
exports.accessibilityInfo_fetch = function (o) {
  return function () {
    return accessibilityInfo_fetch();
  };
};

var accessibilityInfo_addEventListener = accessibilityInfo.addEventListener;
exports.accessibilityInfo_addEventListener = function (eventName) {
  return function (handler) {
    return function () {
      return accessibilityInfo_addEventListener(eventName, handler);
    };
  };
};

var accessibilityInfo_setAccessibilityFocus = accessibilityInfo.setAccessibilityFocus;
exports.accessibilityInfo_setAccessibilityFocus = function (reactTag) {
  return function () {
    return accessibilityInfo_setAccessibilityFocus(reactTag);
  };
};

var accessibilityInfo_announceForAccessibility = accessibilityInfo.announceForAccessibility;
exports.accessibilityInfo_announceForAccessibility = function (announcement) {
  return function () {
    return accessibilityInfo_announceForAccessibility(announcement);
  };
};

var accessibilityInfo_removeEventListener = accessibilityInfo.removeEventListener;
exports.accessibilityInfo_removeEventListener = function (eventName) {
  return function (handler) {
    return function () {
      return accessibilityInfo_removeEventListener(eventName, handler);
    };
  };
};

// animated

var animated = require('react-native').Animated;

var animated_subtract = animated.subtract;
exports.animated_subtract = function (a) {
  return function (b) {
    return function () {
      return animated_subtract(a, b);
    };
  };
};

var animated_loop = animated.loop;
exports.animated_loop = function (animation) {
  return function (config) {
    return function () {
      return animated_loop(animation, config);
    };
  };
};

var animated_forkEvent = animated.forkEvent;
exports.animated_forkEvent = function (event) {
  return function (listener) {
    return function () {
      return animated_forkEvent(event, listener);
    };
  };
};

var animated_unforkEvent = animated.unforkEvent;
exports.animated_unforkEvent = function (event) {
  return function (listener) {
    return function () {
      return animated_unforkEvent(event, listener);
    };
  };
};

// appRegistry

var appRegistry = require('react-native').AppRegistry;

var appRegistry_setWrapperComponentProvider = appRegistry.setWrapperComponentProvider;
exports.appRegistry_setWrapperComponentProvider = function (provider) {
  return function () {
    return appRegistry_setWrapperComponentProvider(provider);
  };
};

var appRegistry_registerSection = appRegistry.registerSection;
exports.appRegistry_registerSection = function (appKey) {
  return function (component) {
    return function () {
      return appRegistry_registerSection(appKey, component);
    };
  };
};

var appRegistry_getSectionKeys = appRegistry.getSectionKeys;
exports.appRegistry_getSectionKeys = function (o) {
  return function () {
    return appRegistry_getSectionKeys();
  };
};

var appRegistry_getSections = appRegistry.getSections;
exports.appRegistry_getSections = function (o) {
  return function () {
    return appRegistry_getSections();
  };
};

var appRegistry_getRunnable = appRegistry.getRunnable;
exports.appRegistry_getRunnable = function (o) {
  return function () {
    return appRegistry_getRunnable();
  };
};

var appRegistry_getRegistry = appRegistry.getRegistry;
exports.appRegistry_getRegistry = function (o) {
  return function () {
    return appRegistry_getRegistry();
  };
};

var appRegistry_setComponentProviderInstrumentationHook = appRegistry.setComponentProviderInstrumentationHook;
exports.appRegistry_setComponentProviderInstrumentationHook = function (hook) {
  return function () {
    return appRegistry_setComponentProviderInstrumentationHook(hook);
  };
};

// Dimensions

var dimensions = require('react-native').Dimensions;

var dimensions_addEventListener = dimensions.addEventListener;
exports.dimensions_addEventListener = function (type) {
  return function (handler) {
    return function () {
      return dimensions_addEventListener(type, handler);
    };
  };
};

var dimensions_removeEventListener = dimension.removeEventListener;
exports.dimensions_removeEventListener = function (type) {
  return function (handler) {
    return function () {
      return dimensions_removeEventListener(type, handler);
    };
  };
};

// geoLocation

var geolocation = require('react-native').GeoLocation;

var geolocation_setRNConfiguration = geolocation.setRNConfiguration;
exports.geolocation_setRNConfiguration = function (config) {
  return function () {
    return geolocation_setRNConfiguration(config);
  };
};

var geolocation_requestAuthorization = geolocation.requestAuthorization;
exports.geolocation_requestAuthorization = function (o) {
  return function () {
    return geolocation_requestAuthorization();
  };
};

// layoutAnimation

var layoutAnimation = require('react-native').LayoutAnimation;

var layoutAnimation_checkConfig = layoutAnimation.checkConfig;
exports.layoutAnimation_checkConfig = function (config) {
  return function (location) {
    return function (name) {
      return function () {
        return layoutAnimation_checkConfig(config, location, name);
      };
    };
  };
};

// Linking

var linking = require('react-native').Linking;

var linking_constructor = linking.constructor;
exports.linking_constructor = function (o) {
  return function () {
    return linking_constructor();
  };
};

// ListViewDataSource

var listViewDataSource = require('react-native').ListViewDataSource;

var listViewDataSource_constructor = listViewDataSource.constructor;
exports.listViewDataSource_constructor = function (params) {
  return function () {
    return listViewDataSource_constructor(params);
  };
};

var listViewDataSource_cloneWithRows = listViewDataSource.cloneWithRows;
exports.listViewDataSource_cloneWithRows = function (dataBlob) {
  return function (rowIdentities) {
    return function () {
      return listViewDataSource_cloneWithRows(dataBlob, rowIdentities);
    };
  };
};

var listViewDataSource_cloneWithRowsAndSections = listViewDataSource.cloneWithRowsAndSections;
exports.listViewDataSource_cloneWithRowsAndSections = function (dataBlob) {
  return function (sectionIdentities) {
    return function (rowIdentities) {
      return function () {
        return listViewDataSource_cloneWithRowsAndSections(dataBlob, sectionIdentities, rowIdentities);
      };
    };
  };
};

var listViewDataSource_getRowCount = listViewDataSource.getRowCount;
exports.listViewDataSource_getRowCount = function (o) {
  return function () {
    return listViewDataSource_getRowCount();
  };
};

var listViewDataSource_getRowAndSectionCount = listViewDataSource.getRowAndSectionCount;
exports.listViewDataSource_getRowAndSectionCount = function (o) {
  return function () {
    return listViewDataSource_getRowAndSectionCount();
  };
};

var listViewDataSource_rowShouldUpdate = listViewDataSource.rowShouldUpdate;
exports.listViewDataSource_rowShouldUpdate = function (sectionIndex) {
  return function (rowIndex) {
    return function () {
      return listViewDataSource_rowShouldUpdate(sectionIndex, rowIndex);
    };
  };
};

var listViewDataSource_getRowData = listViewDataSource.getRowData;
exports.listViewDataSource_getRowData = function (sectionIndex) {
  return function (rowIndex) {
    return function () {
      return listViewDataSource_getRowData(sectionIndex, rowIndex);
    };
  };
};

var listViewDataSource_getRowIDForFlatIndex = listViewDataSource.getRowIDForFlatIndex;
exports.listViewDataSource_getRowIDForFlatIndex = function (index) {
  return function () {
    return listViewDataSource_getRowIDForFlatIndex(index);
  };
};

var listViewDataSource_getSectionIDForFlatIndex = listViewDataSource.getSectionIDForFlatIndex;
exports.listViewDataSource_getSectionIDForFlatIndex = function (index) {
  return function () {
    return listViewDataSource_getSectionIDForFlatIndex(index);
  };
};

var listViewDataSource_getSectionLengths = listViewDataSource.getSectionLengths;
exports.listViewDataSource_getSectionLengths = function (o) {
  return function () {
    return listViewDataSource_getSectionLengths();
  };
};

var listViewDataSource_sectionHeaderShouldUpdate = listViewDataSource.sectionHeaderShouldUpdate;
exports.listViewDataSource_sectionHeaderShouldUpdate = function (sectionIndex) {
  return function () {
    return listViewDataSource_sectionHeaderShouldUpdate(sectionIndex);
  };
};

var listViewDataSource_getSectionHeaderData = listViewDataSource.getSectionHeaderData;
exports.listViewDataSource_getSectionHeaderData = function (sectionIndex) {
  return function () {
    return listViewDataSource_getSectionHeaderData(sectionIndex);
  };
};

// NetInfo

var netInfo = require('react-native').NetInfo;

var netInfo_getConnectionInfo = netInfo.getConnectionInfo;
exports.netInfo_getConnectionInfo = function (o) {
  return function () {
    return netInfo_getConnectionInfo();
  };
};

// PermissionsAndroid

var permissionsAndroid = require('react-native').PermissionsAndroid;

var permissionsAndroid_constructor = permissionsAndroid.constructor;
exports.permissionsAndroid_constructor = function (o) {
  return function () {
    return permissionsAndroid_constructor();
  };
};

var permissionsAndroid_check = permissionsAndroid.check;
exports.permissionsAndroid_check = function (permission) {
  return function () {
    return permissionsAndroid_check(permission);
  };
};

var permissionsAndroid_request = permissionsAndroid.request;
exports.permissionsAndroid_request = function (permission) {
  return function (rationale) {
    return function () {
      return permissionsAndroid_request(permission, rationale);
    };
  };
};

var permissionsAndroid_requestMultiple = permissionsAndroid.requestMultiple;
exports.permissionsAndroid_requestMultiple = function (permissions) {
  return function () {
    return permissionsAndroid_requestMultiple(permissions);
  };
};

// systrace

var systrace = require('react-native').Systrace;

var systrace_installReactHook = systrace.installReactHook;
exports.systrace_installReactHook = function (useFiber) {
  return function () {
    return systrace_installReactHook(useFiber);
  };
};

var systrace_isEnabled = systrace.isEnabled;
exports.systrace_isEnabled = function (o) {
  return function () {
    return systrace_isEnabled();
  };
};