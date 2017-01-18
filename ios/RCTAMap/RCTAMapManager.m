//
//  Created by 朱有杰 on 2017/1/18.
//  Copyright © 2017年 zhuyoujie. All rights reserved.
//
#import "RCTAMapManager.h"
#import "RCTAMap.h"
#import "RCTConvert+CoreLocation.h"
#import "RCTConvert+AMapKit.h"

#import <RCTUIManager.h>
#import <RCTBridgeModule.h>
#import <AMapFoundationKit/AMapFoundationKit.h>

@implementation RCTAMapManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
    return [RCTAMap new];
}

RCT_EXPORT_VIEW_PROPERTY(logoPosition, NSString *)
RCT_EXPORT_VIEW_PROPERTY(mapType, NSString *)
RCT_EXPORT_VIEW_PROPERTY(myLocationEnabled, BOOL)
RCT_EXPORT_VIEW_PROPERTY(myLocationType, NSString *)
RCT_EXPORT_VIEW_PROPERTY(allGesturesEnabled, BOOL)
RCT_EXPORT_VIEW_PROPERTY(compassEnabled, BOOL)
RCT_EXPORT_VIEW_PROPERTY(indoorSwitchEnabled, BOOL)
RCT_EXPORT_VIEW_PROPERTY(rotateGesturesEnabled, BOOL)
RCT_EXPORT_VIEW_PROPERTY(scrollGesturesEnabled, BOOL)
RCT_EXPORT_VIEW_PROPERTY(trafficEnabled, BOOL)
RCT_EXPORT_VIEW_PROPERTY(zoomGesturesEnabled, BOOL)

RCT_EXPORT_VIEW_PROPERTY(defaultRegion, MACoordinateRegion)
RCT_CUSTOM_VIEW_PROPERTY(region, MACoordinateRegion, RCTAMap)
{
    if (json == nil) return;

    NSLog(@"RCT_CUSTOM_VIEW_PROPERTY-setRegion:%f", [RCTConvert MACoordinateRegion:json].center.latitude);
    [view setRegion:[RCTConvert MACoordinateRegion:json] animated:YES];
}

RCT_EXPORT_METHOD(animateToRegion:(nonnull NSNumber *)reactTag
        withRegion:(MACoordinateRegion)region
        withDuration:(CGFloat)duration)
{
    [self.bridge.uiManager addUIBlock:^(__unused RCTUIManager *uiManager, NSDictionary<NSNumber *, UIView *> *viewRegistry) {
        id view = viewRegistry[reactTag];
        if (![view isKindOfClass:[RCTAMap class]]) {
            RCTLogError(@"Invalid view returned from registry, expecting AMap, got: %@", view);
        } else {
            [RCTAMap animateWithDuration:duration/1000 animations:^{
                [(RCTAMap *)view setRegion:region animated:YES];
            }];
        }
    }];
}

RCT_EXPORT_VIEW_PROPERTY(onRegionChange, RCTDirectEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onMove, RCTDirectEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onZoom, RCTDirectEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onUpdateLocation, RCTDirectEventBlock)

@end
