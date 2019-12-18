//
//  DesktopViewGenerator.m
//  04_Factory_Method
//
//  Created by 张枫林 on 2019/12/18.
//  Copyright © 2019 张枫林. All rights reserved.
//

#import "DesktopViewGenerator.h"
#import "DesktopView.h"

@implementation DesktopViewGenerator

- (instancetype)init
{
    self = [super init];
    if (self) {
        _desktops = [NSMutableArray array];
    }
    return self;
}
- (BaseMediaView *)generateMediaView  {
    return [[DesktopView alloc] init];
}

- (void)registerView:(BaseMediaView *)view {
    [_desktops addObject:view];
}

@end
