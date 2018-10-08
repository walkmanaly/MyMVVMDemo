//
//  TableViewDataSource.m
//  MyMVVMDemo
//
//  Created by Nick on 2018/10/8.
//  Copyright © 2018 Nick. All rights reserved.
//

#import "TableViewDataSource.h"
#import "MyTableViewCell.h"
#import "Model.h"

@implementation TableViewDataSource

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[MyTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        cell.titleLabel.text = ((Model *)[_array objectAtIndex:indexPath.row]).title;
    }
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _array.count;
}

@end
