#import "FlutterPigeonDemoPlugin.h"
#import "PigeonDemoMessage.h"

@implementation FlutterPigeonDemoPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
    FlutterPigeonDemoPlugin* instance = [[FlutterPigeonDemoPlugin alloc] init];
    FLTPigeonDemoApiSetup(registrar.messenger, instance);
}

- (FLTDemoReply*)getMessage:(FLTDemoRequest*)input error:(FlutterError**)error {
    FLTDemoReply* reply = [[FLTDemoReply alloc] init];
    reply.result = @"pigeon demo result";
    return reply;
}

@end
