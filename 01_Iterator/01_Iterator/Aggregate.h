//
//  Aggregate.h
//  01_Iterator
//
//  Created by 张枫林 on 2019/12/8.
//  Copyright © 2019 张枫林. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iterator.h"

NS_ASSUME_NONNULL_BEGIN

@protocol Aggregate <NSObject>

/*
 * 生成一个用于遍历集合的迭代器
 */
-(id<Iterator>)iterator;

@end

NS_ASSUME_NONNULL_END
