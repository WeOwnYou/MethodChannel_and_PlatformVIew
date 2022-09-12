// Autogenerated from Pigeon (v4.0.2), do not edit directly.
// See also: https://pub.dev/packages/pigeon
#import <Foundation/Foundation.h>
@protocol FlutterBinaryMessenger;
@protocol FlutterMessageCodec;
@class FlutterError;
@class FlutterStandardTypedData;

NS_ASSUME_NONNULL_BEGIN

@class Data;

@interface Data : NSObject
+ (instancetype)makeWithSomeText:(nullable NSString *)someText
    otherText:(nullable NSString *)otherText;
@property(nonatomic, copy, nullable) NSString * someText;
@property(nonatomic, copy, nullable) NSString * otherText;
@end

/// The codec used by DataApi.
NSObject<FlutterMessageCodec> *DataApiGetCodec(void);

@protocol DataApi
/// @return `nil` only when `error != nil`.
- (nullable NSArray<Data *> *)searchKeyword:(NSString *)keyword error:(FlutterError *_Nullable *_Nonnull)error;
@end

extern void DataApiSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<DataApi> *_Nullable api);

NS_ASSUME_NONNULL_END
