//
//  BookShelf.m
//  01_Iterator
//
//  Created by 张枫林 on 2019/12/8.
//  Copyright © 2019 张枫林. All rights reserved.
//

#import "BookShelf.h"

@class BookShelfIterator;

@implementation BookShelf {
    NSMutableArray *_books;
    NSUInteger _maxSize;
}

- (nonnull id<Iterator>)iterator {
    return [BookShelfIterator iteratorWith:self];
}

- (instancetype)initWithSize:(NSUInteger)size {
    self = [super init];
    if (self) {
        _books = [NSMutableArray arrayWithCapacity:size];
        _maxSize = size;
    }
    return self;
}

- (void)appendBook:(Book *)book {
    [_books addObject:book];
}

- (Book *)bookAtIndex:(NSUInteger)index {
    if (index >= _books.count) {
        return nil;
    }
    return _books[index];
}

- (NSUInteger)count {
    return _books.count;
}

@end

@implementation BookShelfIterator {
    BookShelf *_bookSelf;
    NSUInteger _index;
}

+ (instancetype)iteratorWith:(BookShelf *)bookSelf{
    return [[self alloc] initWithBookSelf:bookSelf];
}

- (instancetype)initWithBookSelf:(BookShelf *)bookSelf{
    self = [super init];
    if (self) {
        _bookSelf = bookSelf;
    }
    return self;
}

- (BOOL)hasNext {
    return _index < _bookSelf.count;
}

- (id)next {
    Book *book = [_bookSelf bookAtIndex:_index];
    _index++;
    return book;
}

@end
