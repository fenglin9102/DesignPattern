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

@class Book;

NS_ASSUME_NONNULL_BEGIN

/**
 书架,该类作为集合进行处理
 支持 “NSFastEnumeration”
 */
@interface BookShelf : NSObject <NSFastEnumeration>

- (instancetype)initWithSize:(NSUInteger)size;
- (Book *)bookAtIndex:(NSUInteger)index;
- (void)appendBook:(Book *)book;
- (NSUInteger)count;


/**
 @return 生成一个用于遍历集合的迭代器
 */
- (NSEnumerator<Book *> *)objectEnumerator;

@end





NS_ASSUME_NONNULL_END
