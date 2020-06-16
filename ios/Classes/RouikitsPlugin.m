#import "RouikitsPlugin.h"
#if __has_include(<rouikits/rouikits-Swift.h>)
#import <rouikits/rouikits-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "rouikits-Swift.h"
#endif

@implementation RouikitsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftRouikitsPlugin registerWithRegistrar:registrar];
}
@end
