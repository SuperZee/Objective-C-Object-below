//
//  Person.m
//  Objective-C-Object-below
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void) info
{
    NSLog(@"%@",[self description]);
}

//这个方法是隐藏方法  在声明中没有定义的方法
//外界是不能直接访问到的  虽然可以使用NSObject performSelector:方法来执行动态调用
// 但这完全避开了编译器检查
// 所以我们可以通过类别来定义前向引用,从而对私有方法的调用
- (void) yinCangMethod:(NSString*)something
{
    NSLog(@"你访问隐藏方法试试看？ + %@",something);
}
@end
