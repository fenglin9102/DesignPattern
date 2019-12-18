//
//  YYRatingCellDelegate.h
//  Photos
//
//  Created by 张枫林 on 2019/12/15.
//  Copyright © 2019 张枫林. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol YYRatingCellDelegate <NSObject>
- (void)didClickStarWithRate:(double)rate indexPath:(NSIndexPath *)indexPath;
@end

NS_ASSUME_NONNULL_END
