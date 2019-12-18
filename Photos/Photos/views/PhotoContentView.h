//
//  PhotoContentView.h
//  Photos
//
//  Created by 张枫林 on 2019/12/15.
//  Copyright © 2019 张枫林. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YYReloadViewDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface PhotoContentView : UIView <UITableViewDelegate, YYReloadViewDelegate>
@property (nonatomic,readonly,strong)UITableView *tableview;
@end

NS_ASSUME_NONNULL_END
