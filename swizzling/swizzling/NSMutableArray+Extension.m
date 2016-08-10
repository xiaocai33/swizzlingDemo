//
//  NSMutableArray+Extension.m
//  swizzling
//
//  Created by 小蔡 on 16/8/10.
//  Copyright © 2016年 xiaocai. All rights reserved.
//

#import "NSMutableArray+Extension.h"
#import <objc/runtime.h>

@implementation NSMutableArray (Extension)

// 用 swizzling 技术实现 过滤 添加 nil
+ (void)load{
    Method originMethod = class_getInstanceMethod(NSClassFromString(@"__NSArrayM"), @selector(addObject:));
    Method otherMethod = class_getInstanceMethod(NSClassFromString(@"__NSArrayM"), @selector(XCAddObject:));
    method_exchangeImplementations(originMethod, otherMethod);
}

- (void)XCAddObject:(id)obj{
    if (obj != nil) {
        [self XCAddObject:obj];
    }else{
        NSLog(@"添加对象不能为空");
    }
}

@end
