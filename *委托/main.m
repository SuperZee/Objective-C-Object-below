//
//  main.m
//  *委托
//
//  Created by SpiColorPendra on 16/1/18.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Boss.h"
#import "Sec.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //委托是一种设计思想 常常结合协议来使用
        // 委托和协议本身没有任何关系,协议就是起到C++中纯虚类的作用，对于“委托”
        // 其实不用协议也完全可以实现委托
        
        //创建委托人
        Boss *boss = [[Boss alloc]init];
        //创建委托人委托的秘书
        Sec *sec = [[Sec alloc]init];
        // 设置boss的秘书
        boss.delegate = sec;
        //boss 教育新员工
        [boss teach];
        [boss manage];
        // boss委托秘书 打电话 发工资
        [boss tel];
        [boss payoff];
        /*
          boss teach
          boss manage
          sec tel
          sec payoff!
         */
         }
    return 0;
}
