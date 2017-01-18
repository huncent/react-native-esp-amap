//
//  Created by 朱有杰 on 2017/1/18.
//  Copyright © 2017年 zhuyoujie. All rights reserved.
//

#import "RCTAMapCalloutViewManager.h"
#import "RCTAMapCalloutView.h"


@implementation RCTAMapCalloutViewManager

RCT_EXPORT_MODULE()


- (UIView *)view
{
    return [RCTAMapCalloutView new];
}

@end
