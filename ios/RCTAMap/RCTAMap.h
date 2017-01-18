//
//  Created by 朱有杰 on 2017/1/18.
//  Copyright © 2017年 zhuyoujie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <RCTView.h>
#import <MAMapKit/MAMapKit.h>
#import "RCTAMapAnnotationView.h"

#define UPDATE_PROP(prop_type, prop_name) \
- (void)set##prop_name:(prop_type)set_val { _##prop_name = set_val; [self loadMap]; }

@interface RCTAMap : RCTView <MAMapViewDelegate>

@property(nonatomic, strong) MAMapView *mapView;

@property(nonatomic, strong) NSString *logoPosition;
@property(nonatomic, strong) NSString *mapType;

@property(nonatomic, assign) BOOL myLocationEnabled;
@property(nonatomic, strong) NSString *myLocationType;

@property(nonatomic, assign) BOOL allGesturesEnabled;
@property(nonatomic, assign) BOOL compassEnabled;
@property(nonatomic, assign) BOOL indoorSwitchEnabled;
@property(nonatomic, assign) BOOL rotateGesturesEnabled;
@property(nonatomic, assign) BOOL scrollGesturesEnabled;
@property(nonatomic, assign) BOOL trafficEnabled;
@property(nonatomic, assign) BOOL zoomGesturesEnabled;

@property(nonatomic, assign) MACoordinateRegion defaultRegion;
@property (nonatomic) MACoordinateRegion region;

@property (nonatomic, copy) RCTDirectEventBlock onRegionChange;
@property (nonatomic, copy) RCTDirectEventBlock onMove;
@property (nonatomic, copy) RCTDirectEventBlock onZoom;
@property (nonatomic, copy) RCTDirectEventBlock onUpdateLocation;

- (void)setRegion:(MACoordinateRegion)region animated:(BOOL)animated;

@end
