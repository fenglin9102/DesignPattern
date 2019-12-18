//
//  Banner.m
//  _2_Adapter
//
//  Created by 张枫林 on 2019/12/14.
//  Copyright © 2019 张枫林. All rights reserved.
//

#import "Banner.h"

@implementation Banner

- (instancetype)initWithContent:(NSString *)str {
    self = [super init];
    if (self) {
        _content = str;
    }
    return self;
}
- (void)showWithParen {
    NSLog(@"(%@)",_content);
}
- (void)showWithAster {
     NSLog(@"*%@*",_content);
}
@end
