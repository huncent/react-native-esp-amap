//
//  Created by 朱有杰 on 2017/1/18.
//  Copyright © 2017年 zhuyoujie. All rights reserved.
//

#import "RCTConvert.h"
#import <MAMapKit/MAMapKit.h>
#import <AMapSearchKit/AMapSearchKit.h>

@interface RCTConvert (AMapKit)

+ (MACoordinateSpan)MACoordinateSpan:(id)json;
+ (MACoordinateRegion)MACoordinateRegion:(id)json;
+ (AMapGeoPoint *)AMapGeoPoint:(id)json;

@end
