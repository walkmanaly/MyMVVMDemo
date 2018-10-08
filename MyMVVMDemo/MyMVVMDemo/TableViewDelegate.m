//
//  TableViewDelegate.m
//  MyMVVMDemo
//
//  Created by Nick on 2018/10/8.
//  Copyright © 2018 Nick. All rights reserved.
//

#import "TableViewDelegate.h"

@implementation TableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"didSelectRowAtIndexPath -- %zd", indexPath.row);
}

@end
