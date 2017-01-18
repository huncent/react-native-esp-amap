//
//  Created by 朱有杰 on 2017/1/18.
//  Copyright © 2017年 zhuyoujie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <RCTComponent.h>
#import <RCTBridge.h>
#import <RCTConvert+CoreLocation.h>
#import <MAMapKit/MAMapKit.h>

#import "RCTAMap.h"
#import "RCTAMapCalloutView.h"

@class RCTAMap;
@class RCTBridge;
@class RCTAMapCalloutView;


@interface RCTAMapAnnotationView : MAAnnotationView <MAAnnotation>

@property (nonatomic, strong) RCTAMapCalloutView *calloutView;
@property (nonatomic, weak) RCTAMap *mapView;
@property (nonatomic, weak) RCTBridge *bridge;

@property (nonatomic, strong) NSString *identifier;
@property (nonatomic, copy) NSString *imageSrc;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;
@property (nonatomic, copy) NSString *pinColor;
@property (nonatomic, assign) CLLocationCoordinate2D coordinate;

@property (nonatomic, copy) RCTDirectEventBlock onSelect;


- (MAAnnotationView *)getAnnotationView;


@end
