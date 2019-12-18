//
//  ArrayDataSource.h
//  objc.io example project (issue #1)
//

#import <UIKit/UIKit.h>
#import "YYTableViewHeightDelegate.h"

typedef void (^TableViewCellConfigureBlock)(id cell, id<YYTableViewHeightDelegate> item, NSIndexPath *indexPath);

typedef NSString* (^TableViewCellIdentifiesConfigBlock)(id<YYTableViewHeightDelegate> item);

@interface ArrayDataSource : NSObject <UITableViewDataSource, UITableViewDelegate>

- (instancetype)initWithCellIdentifier:(NSString *)aCellIdentifier
                    configureCellBlock:(TableViewCellConfigureBlock)aConfigureCellBlock;

- (void)setDataSource:(NSArray *)items;

@property (nonatomic, copy) TableViewCellIdentifiesConfigBlock identifiersBlock;

@end
