//
//  MediaFactory.m
//  04_Factory_Method
//
//  Created by 张枫林 on 2019/12/18.
//  Copyright © 2019 张枫林. All rights reserved.
//

#import "BaseMediaGenerator.h"

@implementation BaseMediaGenerator

- (BaseMediaView *)generate {
    BaseMediaView *view = [self generateMediaView];
    [self registerView:view];
    return view;
}

- (BaseMediaView *)generateMediaView {
    return nil;
}

- (void)registerView:(BaseMediaView *)view {
}
@end
