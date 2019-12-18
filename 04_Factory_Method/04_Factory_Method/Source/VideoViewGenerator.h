//
//  VideoViewGenerator.h
//  04_Factory_Method
//
//  Created by 张枫林 on 2019/12/18.
//  Copyright © 2019 张枫林. All rights reserved.
//

#import "BaseMediaGenerator.h"

NS_ASSUME_NONNULL_BEGIN

@interface VideoViewGenerator : BaseMediaGenerator

@property (nonatomic, readonly, strong) NSMutableArray *videoViews;

@end

NS_ASSUME_NONNULL_END
