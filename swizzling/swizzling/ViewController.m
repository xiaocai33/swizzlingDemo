//
//  ViewController.m
//  swizzling
//
//  Created by 小蔡 on 16/8/10.
//  Copyright © 2016年 xiaocai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *arrM = [NSMutableArray array];
    [arrM addObject:@"zhangsan"];
    [arrM addObject:@"lisi"];
    [arrM addObject:nil];
    [arrM addObject:@"wangwu"];
    
    NSLog(@"%@", arrM);
}


@end
