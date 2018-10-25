//
//  WNSomeModel.m
//  OCDelegateDdemo
//
//  Created by 吴楠 on 2018/10/24.
//  Copyright © 2018 wunan. All rights reserved.
//

#import "WNSomeModel.h"

@interface WNSomeModel()

@end

@implementation WNSomeModel

- (void) test{
    if (self.delegate && [self.delegate respondsToSelector:@selector(protocalMethod)]) {
//        [self.delegate performSelector:@selector(protocalMethod)];
        [self.delegate protocalMethod];
    }
}


@end
