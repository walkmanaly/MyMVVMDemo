//
//  ViewModel.h
//  MyMVVMDemo
//
//  Created by Nick on 2018/10/8.
//  Copyright © 2018 Nick. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^CompletionHandler)(NSArray *arr);

NS_ASSUME_NONNULL_BEGIN

@interface ViewModel : NSObject

- (void)headerReflashWithBlock:(CompletionHandler) headComplete;
- (void)footerReflashWithBlock:(CompletionHandler) footComplete;

@end

NS_ASSUME_NONNULL_END
