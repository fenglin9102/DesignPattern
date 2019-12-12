//
//  Iterator.h
//  01_Iterator
//
//  Created by 张枫林 on 2019/12/8.
//  Copyright © 2019 张枫林. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


/**
 其作用相当于循环语句中的循环变量
 */
@protocol Iterator <NSObject>
- (BOOL)hasNext;
- (id)next;
@end

NS_ASSUME_NONNULL_END
