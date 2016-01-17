//
//  NSString+lee.m
//  Objective-C-Object-below
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import "NSString+lee.h"

@implementation NSNumber (lee)
/*
 虽然类别可以重写父类方法 但通常不建议这么做，需要重写父类方法 推荐使用继承来做
 通过类别为指定的类添加方法后，这个新方法不仅可以影响NSNumber类，还可以影响它的子类，每个子类都获取类别扩展的方法
 可根据需要为一个类定义多个类别 不同的类别都可对原有的类增加方法定义
 类别的用途：
    1.利用类别对类进行模块化设计
    2.使用类别来调用私有方法
    3.使用类别来实现非正式协议
 */
- (NSNumber*) add:(double)num2
{
    return [NSNumber numberWithDouble:([self doubleValue] + num2)];
}

- (NSNumber*) substract:(double)num2
{
    return [NSNumber numberWithDouble:([self doubleValue] - num2)];
}

-(NSNumber*) multiply:(double)num2
{
    return [NSNumber numberWithDouble:([self doubleValue] * num2)];
}

-(NSNumber*) divide:(double)num2
{
    return [NSNumber numberWithDouble:([self doubleValue] / num2)];
}
@end
