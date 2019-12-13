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


void test1(){
    NSLog(@"begin");
    NSArray *array = @[@"121",@"341",@"e1313"];
    [array enumerateObjectsWithOptions:1 usingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"%@ - %@",obj, [NSThread currentThread]);
    }];
    NSLog(@"end");
}

void test2(BookShelf *books){
    NSLog(@"begin");
    [books enumerateObjectsWithOptions:NSEnumerationConcurrent usingBlock:^(Book * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"obj.name-> %@ %@", obj.name, [NSThread currentThread]);
    }];
    NSLog(@"end");
}


void test3(BookShelf *books){
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
        
//        test1();
//
//        test2(books);
        
        test3(books);
       
    }
    return 0;
}
