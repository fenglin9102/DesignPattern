//
//  PhotoContentView.m
//  Photos
//
//  Created by 张枫林 on 2019/12/15.
//  Copyright © 2019 张枫林. All rights reserved.
//

#import "PhotoContentView.h"

@interface PhotoContentView()
@property (nonatomic,readwrite,strong)UITableView *tableview;
@end

@implementation PhotoContentView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup
{
    _tableview = [[UITableView alloc] initWithFrame:self.bounds style:UITableViewStylePlain];
    [self addSubview:_tableview];
}



- (void)reloadView {
    [_tableview reloadData];
}

@end
