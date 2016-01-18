//
//  main.m
//  异常机制
//
//  Created by SpiColorPendra on 16/1/18.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Apple.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
       // 异常在Java中非常常见  几乎处处都在使用
    // OC中的异常通常用来调试，
        
        //使用 @try  @catch @finally 捕捉异常
        //  使用格式:
        /*
         @try
         {
         //业务实现代码
         ...
         }
         @catch(异常1 ex)
         {
         //异常处理代码
         }
         @catch(异常2 ex)
         {
         //异常处理代码
         }
         //可能更多的@catch块
         ...
         @finally
         {
         
         }
         
         注意点:
         @try  放可能 throw 异常的代码
         @try  @catch 块中的都是局部变量  catch块不能访问try中的局部变量
         @try  @catch 不能省略大括号，即使只有一行代码
         @catch 一次只能捕获一个异常  除非再循环中使用goto 才可能导致多个@catch被执行
         */
        
        @try
        {
            Apple *apple = [[Apple alloc]init];
            [apple taste];//调用没实现的taste方法  捕获异常
        }
        @catch(NSException* ex)
        {
            // 这里需要注意的是:
            //  NSException是所有异常的父类  如果把Exception放在最前面，那么其他@catch块的异常
            // 就得不到执行，编译期不会报错，也不能检查到，需要程序员自己保证!
            //  但是OC并没有提供像Java那样强大的异常体系，很多时候常用的异常类就是NSException
            NSLog(@"捕捉到了异常");
            NSLog(@"捕捉异常: 异常名:%@ , 原因:%@",ex.name,ex.reason);
            // name 异常名   reason异常发生的原因  userInfo 引发异常的用户信息 返回一个NSDictionary对象
        }
        @finally
        {
            NSLog(@"资源回收，不管发生异常与否都执行");
        }
        NSLog(@"虽然出现异常，但是程序依然可以执行完成");
        
        //Apple *apple = [[Apple alloc]init];
        //[apple taste];//调用没实现的taste方法  发生异常
        /*
         -[Apple taste]: unrecognized selector sent to instance 0x100700080
         *** Terminating app due to uncaught exception 'NSInvalidArgumentException', reason: '-[Apple taste]: unrecognized selector sent to instance 0x100700080'
         报错原因 :由于Apple taste发送了一个未被实现的方法给0X10070080这个实例变量

         */
        

    }

    return 0;
}
