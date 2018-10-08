//
//  ViewController.m
//  MyMVVMDemo
//
//  Created by Nick on 2018/10/8.
//  Copyright © 2018 Nick. All rights reserved.
//

#import "ViewController.h"
#import "TableViewDelegate.h"
#import "TableViewDataSource.h"
#import "ViewModel.h"
#import "Model.h"
#import <MJRefresh/MJRefresh.h>

@interface ViewController () {
    TableViewDelegate *delegate;
    TableViewDataSource *dataSource;
    ViewModel *viewModel;
    UITableView *tableView;
    NSArray *data;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) style:UITableViewStylePlain];
    [self.view addSubview:tableView];
    
    delegate = [[TableViewDelegate alloc] init];
    dataSource = [[TableViewDataSource alloc] init];
    viewModel = [[ViewModel alloc] init];
    tableView.dataSource = dataSource;
    tableView.delegate = delegate;
    
    tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(refreshData)];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [tableView.mj_header beginRefreshing];
}

- (void)refreshData {
    [viewModel headerReflashWithBlock:^(NSArray *arr) {
        self->data = arr;
        self->dataSource.array = self->data;
        self->delegate.array = self->data;
        [self->tableView reloadData];
        [self->tableView.mj_header endRefreshing];
    }];
}


@end
