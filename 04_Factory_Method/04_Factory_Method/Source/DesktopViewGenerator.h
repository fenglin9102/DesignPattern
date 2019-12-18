//
//  DesktopViewGenerator.h
//  04_Factory_Method
//
//  Created by 张枫林 on 2019/12/18.
//  Copyright © 2019 张枫林. All rights reserved.
//

#import "BaseMediaGenerator.h"

NS_ASSUME_NONNULL_BEGIN

@interface DesktopViewGenerator : BaseMediaGenerator

@property (nonatomic, readonly, strong) NSMutableArray *desktops;
@end

NS_ASSUME_NONNULL_END
