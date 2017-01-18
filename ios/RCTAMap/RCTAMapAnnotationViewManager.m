//
//  Created by 朱有杰 on 2017/1/18.
//  Copyright © 2017年 zhuyoujie. All rights reserved.
//

#import <MAMapKit/MAMapKit.h>
#import "RCTConvert+CoreLocation.h"

#import "RCTAMapAnnotationView.h"
#import "RCTAMapAnnotationViewManager.h"


@implementation RCTAMapAnnotationViewManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
    RCTAMapAnnotationView *annotationView = [RCTAMapAnnotationView new];
    annotationView.bridge = self.bridge;
    return annotationView;
}

RCT_REMAP_VIEW_PROPERTY(image, imageSrc, NSString)
RCT_EXPORT_VIEW_PROPERTY(title, NSString)
RCT_EXPORT_VIEW_PROPERTY(subtitle, NSString)
RCT_EXPORT_VIEW_PROPERTY(pinColor, NSString)
RCT_EXPORT_VIEW_PROPERTY(centerOffset, CGPoint)
RCT_EXPORT_VIEW_PROPERTY(calloutOffset, CGPoint)
RCT_EXPORT_VIEW_PROPERTY(canShowCallout, BOOL)
RCT_EXPORT_VIEW_PROPERTY(enabled, BOOL)
RCT_EXPORT_VIEW_PROPERTY(highlighted, BOOL)
RCT_EXPORT_VIEW_PROPERTY(selected, BOOL)
RCT_EXPORT_VIEW_PROPERTY(draggable, BOOL)
RCT_EXPORT_VIEW_PROPERTY(coordinate, CLLocationCoordinate2D)
RCT_EXPORT_VIEW_PROPERTY(onSelect, RCTDirectEventBlock)

@end
