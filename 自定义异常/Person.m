//
//  Person.m
//  Objective-C-Object-below
//
//  Created by SpiColorPendra on 16/1/18.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import "Person.h"
#import "MyException.h"
@implementation Person
//重写setAge方法
- (void) setAge:(int)age
{
    // 检查年龄是否在 0~150之间
    if (age > 150 || age < 0) {
        //手动抛出异常
        @throw [[MyException alloc]initWithName:
                @"不合法的年龄" reason:@"人的年龄必须在 0 ~ 150岁之间" userInfo:nil];
    }
    _age = age;
}
@end
