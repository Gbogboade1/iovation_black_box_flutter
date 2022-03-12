#import "IovationBlackBoxFlutterPlugin.h"
#if __has_include(<iovation_black_box_flutter/iovation_black_box_flutter-Swift.h>)
#import <iovation_black_box_flutter/iovation_black_box_flutter-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "iovation_black_box_flutter-Swift.h"
#endif

@implementation IovationBlackBoxFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftIovationBlackBoxFlutterPlugin registerWithRegistrar:registrar];
}
@end
