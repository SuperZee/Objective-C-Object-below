//
//  main.m
//  扩展
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Car+drive.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *c = [[Car alloc]init];
        c.band = @"宝马";
        c.model = @"X5";
        c.color = @"黑色";
        //调用car方法
        [c drive];
        [c drive:@"猪"];
    }
    return 0;
}
