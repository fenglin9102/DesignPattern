//
//  PrintBaner.h
//  _2_Adapter
//
//  Created by 张枫林 on 2019/12/14.
//  Copyright © 2019 张枫林. All rights reserved.
//

#import "Banner.h"

NS_ASSUME_NONNULL_BEGIN


@protocol PrintBanerInterface <NSObject>

- (void)printWeak;
- (void)printStong;

@end


@interface PrintBaner : Banner <PrintBanerInterface>

@end

NS_ASSUME_NONNULL_END
