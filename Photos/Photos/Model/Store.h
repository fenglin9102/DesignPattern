//
//  Store.h
//  objc.io example project (issue #1)
//

#import <Foundation/Foundation.h>
#import "YYRatingCellDelegate.h"
#import "YYReloadViewDelegate.h"

@interface Store : NSObject <YYRatingCellDelegate>

+ (instancetype)store;

@property (readonly, nonatomic, strong) NSArray* photos;
@property (readonly, nonatomic, strong) NSArray* users;
@property (weak, nonatomic) id <YYReloadViewDelegate> delegate;
- (NSArray*)sortedPhotos;

@end
