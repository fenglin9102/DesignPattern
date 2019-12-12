//
//  main.m
//  01_Iterator
//
//  Created by 张枫林 on 2019/12/8.
//  Copyright © 2019 张枫林. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
#import "BookShelf.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BookShelf *books = [[BookShelf alloc] initWithSize:10];
        
        Book *book1 = [Book new];
        book1.name = @"AAA";
        
        Book *book2 = [Book new];
        book2.name = @"MMMM";
        
        Book *book3 = [Book new];
        book3.name = @"BBBB";
        
        [books appendBook:book1];
        [books appendBook:book2];
        [books appendBook:book3];
        
        id<Iterator> iterator = books.iterator;
        while (iterator.hasNext) {
            NSLog(@"%@",iterator.next);
        }
    }
    return 0;
}
