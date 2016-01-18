//
//  main.m
//  *反射机制
//
//  Created by SpiColorPendra on 16/1/18.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Apple.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 获得CLass
        // 1.通过Class NSClassFromString(NSString* aClassName)函数来获取Class
        // 2.调用某个类的class方法来获取该类对应的Class [Person class] 将返回一个Class
        // 3.调用某个对象的class方法，该方法是NSObject类中的一个方法，所以所有的OC对象都可以调用这个方法,
        // 测试
        Class clazz = NSClassFromString(@"NSDate");
        NSLog(@"%@",clazz);
        //直接使用Class来创建对象
        id date = [[clazz alloc]init];
        NSLog(@"%@",date);
        //通过对象来获取Class
        NSLog(@"%@",[date class]);
        //通过类来获取class
        NSLog(@"%d",clazz == NSDate.class);
        /*
          NSDate
          2016-01-18 06:05:37 +0000
          __NSDate
          1
         */
        
        //  1. 通过字符串、类名获取的Class对象是相等的。
        //  2. __NSDate 因为NSDate只是这个类簇的前端，而真正返回的是__NSDate这个子类.
        
        
        
        // 检查继承关系
        Apple *apple = [[Apple alloc]init];
        //通过对象来判断该对象的Class
        NSLog(@"%@",[apple class]);
        // Apple
        //判断对象是否某个类的实例
        NSLog(@"apple 是否是Apple的实例 : %d",[apple isMemberOfClass:Apple.class]);//1
        NSLog(@"apple 是否是NSObjet的实例 : %d",[apple isMemberOfClass:NSObject.class]);//0
        //判断对象是否为某个类及其子类的实例
        NSLog(@"apple 是否是Apple及其子类的实例 : %d",[apple isKindOfClass:Apple.class]);//1
        NSLog(@"apple 是否是NSObject及其子类的实例 : %d",[apple isKindOfClass:Apple.class]);//1
        //判断对象是否实现了指定协议
        NSLog(@"apple 是否实现了Eatable协议 : %d",[apple conformsToProtocol:@protocol(Eatable)]);//1
    }
    return 0;
}
