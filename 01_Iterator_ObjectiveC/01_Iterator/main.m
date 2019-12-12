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
        
        NSEnumerator *enumerator = books.objectEnumerator;
        Book *book = nil;
        while ((book = enumerator.nextObject)) {
            NSLog(@"%@",book.name);
        }
        
        for (Book *b in books) {
            NSLog(@"book.name->%@",b.name);
        }
        
        for (Book *b in books.objectEnumerator) {
            NSLog(@"book.name2->%@",b.name);
        }
       
    }
    return 0;
}
