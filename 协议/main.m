//
//  main.m
//  协议
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrintMachine.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 使用类别可以实现非正式协议
        // 比如给NSObject扩展一个test方法 不实现，只定义
        // 其他类继承NSObject时候，可以实现这个方法
        // 但是非正式协议并不能强制实现该协议的中的所有方法.
        PrintMachine *pr = [[PrintMachine alloc]init];
        [pr addData:@"iOS"];
        [pr addData:@"Java"];
        [pr output];
        [pr addData:@"Android"];
        [pr addData:@"XML"];
        [pr output];
        //创建一个PrintMachine
        //使用协议来定义变量
        // NSObject<协议1,协议2,...>* 变量
        // id<协议1,协议2,...> 变量
        NSObject<Productable>* p = [[PrintMachine alloc]init];
        NSLog(@"%@",[p getProduceTime]);

        id<Output> out1 = [[PrintMachine alloc]init];
        [out1 addData:@"gogo"];
        [out1 addData:@"笨蛋"];
        [out1 output];
    }
    return 0;
}
