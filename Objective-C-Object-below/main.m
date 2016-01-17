//
//  main.m
//  Objective-C-Object-below
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // OC提供了NSValue  NSNumber 来封装C语言的基本类型 这就可以让它们具有面对对象的特征
        // NSInteger 大致相当于 long
        // NSUInteger 大致相当于 unsigned long
        // CGFLoat 在64位平台上大致相当于double  32位大致相当于float
        //  它们不是包装类 依然是基本类型
        
        // NSValue 是 NSNumber的父类  通过这个包装类，可以把short、int、long、float、char、指针、对象id等数据项添加到NSArray、NSSet等集合，（这些集合要求元素必须是对象）
        // NSNumber 是更具体的包装类，主要用于包装C语言的各种类型的数值
        // 包括如下方法：
        //   1. +numberWithXxx : 该类方法直接将指定的值包装成NSNumer
        //   2. -initWithXxx : 该实例方法需要先创建一个NSNumber对象，再用一个基本类型的值来初始化NSNumber
        //   3. -xxxValue : 该实例方法返回该NSNumber对象包装的基本类型的值
        //     xxx 可以代表 int char ...等各种基本类型
        
        
        // 调用类方法将int类型的值包装成NSNumber对象
        NSNumber *num = [NSNumber numberWithInt:20];
        // 将double类型的值包装成NSNumber对象
        NSNumber *de = [NSNumber numberWithDouble:3.4];
        NSLog(@"%d",[num intValue]);
        NSLog(@"%g",[de doubleValue]);
        //先创建NSNumber对象 在调用initWithXxx方法执行初始化
        NSNumber *ch = [[NSNumber alloc]initWithChar:'a'];
        //直接输出ch  = 97
        NSLog(@"%@",ch);
    }
    return 0;
}
