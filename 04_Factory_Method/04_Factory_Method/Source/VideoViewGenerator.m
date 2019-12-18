//
//  VideoViewGenerator.m
//  04_Factory_Method
//
//  Created by 张枫林 on 2019/12/18.
//  Copyright © 2019 张枫林. All rights reserved.
//

#import "VideoViewGenerator.h"
#import "VideoView.h"

@implementation VideoViewGenerator

- (instancetype)init
{
    self = [super init];
    if (self) {
        _videoViews = [NSMutableArray array];
    }
    return self;
}

- (BaseMediaView *)generateMediaView {
    return [[VideoView alloc] init];
}

- (void)registerView:(BaseMediaView *)view {
    [_videoViews addObject:view];
}

@end
