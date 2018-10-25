//
//  ViewController.m
//  OCDelegateDdemo
//
//  Created by 吴楠 on 2018/10/24.
//  Copyright © 2018 wunan. All rights reserved.
//

#import "ViewController.h"
#import "WNSomeModel.h"
#import "WNProtocal.h"
@interface ViewController ()<WNProtocal>
@property (nonatomic,strong)  WNSomeModel *model;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.redColor;
    WNSomeModel *model = [WNSomeModel new];
    model.delegate = self;
    self.model = model;
  
}
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
      [self.model test];
}

#pragma mark - 代理方法
- (void)protocalMethod {
    NSLog(@"oc protocalMethod");
}


@end
