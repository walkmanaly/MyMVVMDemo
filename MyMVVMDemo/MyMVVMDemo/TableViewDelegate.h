//
//  TableViewDelegate.h
//  MyMVVMDemo
//
//  Created by Nick on 2018/10/8.
//  Copyright © 2018 Nick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewDelegate : NSObject <UITableViewDelegate>

@property (nonatomic, strong) NSArray *array;

@end

NS_ASSUME_NONNULL_END