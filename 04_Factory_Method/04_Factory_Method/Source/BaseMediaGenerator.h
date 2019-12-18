//
//  MediaFactory.h
//  04_Factory_Method
//
//  Created by 张枫林 on 2019/12/18.
//  Copyright © 2019 张枫林. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseMediaView.h"


NS_ASSUME_NONNULL_BEGIN

@interface BaseMediaGenerator : NSObject

- (BaseMediaView *)generate;

/*
 *  需要子类生成
 */
- (BaseMediaView *)generateMediaView;

/*
 *  需要子类生成
 */
- (void)registerView:(BaseMediaView *)view;

@end

NS_ASSUME_NONNULL_END
