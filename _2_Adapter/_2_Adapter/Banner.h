//
//  Banner.h
//  _2_Adapter
//
//  Created by 张枫林 on 2019/12/14.
//  Copyright © 2019 张枫林. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Banner : NSObject
@property (nonatomic, copy)NSString *content;
- (instancetype)initWithContent:(NSString *)str;
- (void)showWithParen;
- (void)showWithAster;

@end

NS_ASSUME_NONNULL_END
