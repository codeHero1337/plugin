#import "DmytroPlugin.h"
#if __has_include(<dmytro_plugin/dmytro_plugin-Swift.h>)
#import <dmytro_plugin/dmytro_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "dmytro_plugin-Swift.h"
#endif

@implementation DmytroPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDmytroPlugin registerWithRegistrar:registrar];
}
@end
