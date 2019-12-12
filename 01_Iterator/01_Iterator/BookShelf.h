//
//  BookShelf.h
//  01_Iterator
//
//  Created by 张枫林 on 2019/12/8.
//  Copyright © 2019 张枫林. All rights reserved.
//

/*
 * 参考
 */
#import <Foundation/Foundation.h>
#import "Aggregate.h"
@class Book;

NS_ASSUME_NONNULL_BEGIN

/**
 书架,该类作为集合进行处理
 */
@interface BookShelf : NSObject <Aggregate>

- (instancetype)initWithSize:(NSUInteger)size;
- (Book *)bookAtIndex:(NSUInteger)index;
- (void)appendBook:(Book *)book;
- (NSUInteger)count;
@end




@interface BookShelfIterator : NSObject <Iterator>

+(instancetype)iteratorWith:(BookShelf *)bookSelf;

@end
NS_ASSUME_NONNULL_END
