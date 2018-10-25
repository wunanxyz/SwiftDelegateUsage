//
//  WNSomeModel.h
//  OCDelegateDdemo
//
//  Created by 吴楠 on 2018/10/24.
//  Copyright © 2018 wunan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WNProtocal.h"

NS_ASSUME_NONNULL_BEGIN

@interface WNSomeModel : NSObject
@property (nonatomic,weak) id<WNProtocal> delegate; // <#注释#>
- (void) test;
@end

NS_ASSUME_NONNULL_END
