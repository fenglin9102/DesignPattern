//
//  BookShelf.m
//  01_Iterator
//
//  Created by 张枫林 on 2019/12/8.
//  Copyright © 2019 张枫林. All rights reserved.
//

#import "BookShelf.h"

@interface BookShelfIterator : NSEnumerator
+(instancetype)iteratorWith:(BookShelf *)bookSelf;
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

- (id)nextObject {
    if (_index >= _bookSelf.count) {
        return nil;
    }
    id obj = [_bookSelf bookAtIndex:_index];
    _index ++;
    return obj;
}

@end


@implementation BookShelf {
    NSMutableArray *_books;
    NSUInteger _maxSize;
}


- (NSEnumerator *)objectEnumerator {
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

- (NSUInteger)countByEnumeratingWithState:(nonnull NSFastEnumerationState *)state objects:(id  _Nullable __unsafe_unretained * _Nonnull)buffer count:(NSUInteger)len {
    NSInteger count;
    state->mutationsPtr = (unsigned long *)&state->mutationsPtr;
    count = MIN(len, [self count] - state->state);
    if (count > 0)
    {
        int    p = (int)state->state;
        int    i;
        for (i = 0; i < count; i++, p++)
        {
            buffer[i] = [self bookAtIndex:i];
        }
        state->state += count;
    }
    else
    {
        count = 0;
    }
    state->itemsPtr = buffer;
    return count;
}

@end



