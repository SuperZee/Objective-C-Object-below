//
//  main.m
//  动态调用方法
//
//  Created by SpiColorPendra on 16/1/18.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 程序需要动态调用对象的setter getter方法可以通过KVC机制来实现
        // 如果程序需要判断某个对象是否可调用方法，可通过NSObject的如下方法判断:
        //  respondsToSelector: 该方法需要传入一个SEL参数  --OC把方法称为选择器，因此OC使用SEL对象来代表方法，如果该对象可调用方法，该方法返回YES，否则NO
        // 上面的方法中需要传入一个方法作为参数 也就是说需要SEL对象
        //  为了动态获取SEL对象 OC提供如下方法:
        // 1.使用@Selector指令来获取当前类中指定的方法，需要完整的方法签名关键字作为参数
        // 2.使用SEL NSSelectorFromString(NSString* aSelectorName)函数 根据方法签名的关键字字符串获取对应的方法
        // 如果程序需要动态调用对象的普通方法，可以通过如下两种方法实现:
        //  1.使用NSObject提供的系列 performSelector:方法来实现，该方法的第一个参数需要传入一个SEL对象，如果调用方法需要传入参数可以通过 withObject:标签来传入参数
        //  2.使用 objc_msgSend(receiver,selector,...) 函数来调用 ，第一个参数是方法调用者。第二个参数代表调用方法，接下来的参数将作为调用方法的参数。
        // objc_msgSend 需要导入 <objc/message.h>头文件
        
        //获取Car类
        Class clazz = NSClassFromString(@"Car");
        //动态创建Car对象
        id car = [[clazz alloc]init];
                //使用performSelector方法来动态调用方法

        [car performSelector:@selector(addSpeed:) withObject:[NSNumber numberWithDouble:3.4] ];
        
    }
    return 0;
}
