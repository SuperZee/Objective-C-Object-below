//
//  main.m
//  category访问私有方法
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person+badboy.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //调用Person隐藏方法
        Person *p = [[Person alloc]init];
        //没隐藏的方法
        [p info];
        //隐藏的方法
        [p yinCangMethod:@"试试就试试"];
    }
    return 0;
}
