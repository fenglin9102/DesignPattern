//
//  RatingCell.h
//  objc.io example project (issue #1)
//


#import <UIKit/UIKit.h>
#import "YYRatingCellDelegate.h"

@interface RatingCell : UITableViewCell

@property (nonatomic) double rating; // 0 to 1

@property (nonatomic, weak)id<YYRatingCellDelegate> delegate;

@property (nonatomic, strong) NSIndexPath *indexPath;
@end
