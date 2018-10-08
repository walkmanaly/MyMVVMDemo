//
//  ViewModel.m
//  MyMVVMDemo
//
//  Created by Nick on 2018/10/8.
//  Copyright © 2018 Nick. All rights reserved.
//

#import "ViewModel.h"
#import "Model.h"

@implementation ViewModel

- (void)headerReflashWithBlock:(CompletionHandler)headComplete {
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue, ^{
        sleep(2);
        NSMutableArray *mulArray = [NSMutableArray array];
        dispatch_async(dispatch_get_main_queue(), ^{
            for (int i = 0; i < 15; i++) {
                Model *model = [[Model alloc] init];
                model.title = [NSString stringWithFormat:@"head model %d -----", i];
                [mulArray addObject:model];
            }
            headComplete(mulArray);
        });
    });
    
}

- (void)footerReflashWithBlock:(CompletionHandler)footComplete {
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue, ^{
        sleep(2);
        NSMutableArray *mulArray = [NSMutableArray array];
        dispatch_async(dispatch_get_main_queue(), ^{
            for (int i = 0; i < 15; i++) {
                Model *model = [[Model alloc] init];
                model.title = [NSString stringWithFormat:@"foot model %d -----", i];
                [mulArray addObject:model];
            }
            footComplete(mulArray);
        });
    });
}

@end
