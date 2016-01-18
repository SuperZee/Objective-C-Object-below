//
//  main.m
//  自定义异常
//
//  Created by SpiColorPendra on 16/1/18.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc]init];
        p.age = -1;
        //*** Terminating app due to uncaught exception '不合法的年龄', reason: '人的年龄必须在 0 ~ 150岁之间'

        NSLog(@"%d",p.age);
    }
    return 0;
}
