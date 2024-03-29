//
//  Photo.h
//  objc.io example project (issue #1)
//

#import <Foundation/Foundation.h>
#import "YYTableViewHeightDelegate.h"


@class User;


@interface Photo : NSObject <NSCoding, YYTableViewHeightDelegate>

@property (nonatomic) int64_t identifier;
@property (nonatomic, copy) NSString* name;
@property (nonatomic, strong) NSDate* creationDate;
@property (nonatomic) double rating;

@property (nonatomic, weak) User* user;

- (NSString*)authorFullName;
- (double)adjustedRating;

@end
