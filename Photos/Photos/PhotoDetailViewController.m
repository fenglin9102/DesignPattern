//
//  PhotoDetailViewController.m
//  Photos
//
//  Created by 张枫林 on 2019/12/15.
//  Copyright © 2019 张枫林. All rights reserved.
//

#import "PhotoDetailViewController.h"
#import "PhotoContentView.h"
#import "ArrayDataSource.h"
#import "Store.h"
#import "Photo.h"
#import "RatingCell.h"

static NSString *const RatingCellIdentifier = @"RatingCell";

@interface PhotoDetailViewController ()
@property (nonatomic, strong) PhotoContentView *contentView;
@property (nonatomic, strong) ArrayDataSource *dataSource;
@property (nonatomic, strong) Store *store;
@end

@implementation PhotoDetailViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupView];
}

- (void)setupView {
    __weak typeof(self) weakSelf = self;
    self.store = [Store store];
    _dataSource = [[ArrayDataSource alloc] initWithCellIdentifier:RatingCellIdentifier configureCellBlock:^(RatingCell *cell, Photo *item, NSIndexPath *indexPath) {
        __strong typeof(weakSelf) strongSelf = weakSelf;
        cell.rating = [item adjustedRating];
        cell.indexPath = indexPath;
        cell.delegate = strongSelf.store;
    }];
    [_dataSource setDataSource:self.store.photos];
    self.contentView = [[PhotoContentView alloc] initWithFrame:self.view.bounds];
    self.contentView.tableview.dataSource = _dataSource;
    self.contentView.tableview.delegate = _dataSource;
    [self.contentView.tableview registerClass:[RatingCell class] forCellReuseIdentifier:RatingCellIdentifier];
    [self.view addSubview:self.contentView];
    
    self.store.delegate = self.contentView;
    [self.contentView reloadView];
}

@end
