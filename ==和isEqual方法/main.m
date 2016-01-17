//
//  main.m
//  ==和isEqual方法
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 判断两个变量是否相等 ，有两种方法 一个是  == 运算符 另一个是利用isEqual方法
        // 使用==的时候，如果两个变量是基本类型 且都是数值型 (不一定要求数据类型相同) 只要两个变量值相同 使用==判断返回即为真
        // 对于两个指针变量，它们必须指向同一个对象(也就是说地址相同) ==才返回真
        // 当使用==比较类型上没有继承关系的两个指针变量，编译期会报提示警告，
        
        int i = 65;
        float fl = 65.0f;
        NSLog(@"65和65.0f是否相等? : %d",(i==fl));
        //   1
        char ch = 'A';
        NSLog(@"A是否与65相等? : %d",(ch == i));
        //   1
        NSString* str1 = [NSString stringWithFormat:@"iOS"];
        NSString* str2 = @"iOS";
        NSLog(@"str1 是否与 str2相等？ : %d",(str1==str2));
        //   0
        NSLog(@"%d",[NSData new] == [NSString new]);
        //   0  并给出警告
        //Comparison of distinct pointer types ('NSData *' and 'NSString *')
        
        // [NSString stringWithFormat:@"iOS"] 和 @"iOS"  有什么区别呢？
        // @"iOS"，系统将会使用常量池来管理这个字符串
        // 常量池保证相同的字符串直接量只有一个 不会产生多个副本
        NSString* str3 = @"iOS";
        NSLog(@"str2是否等于str3呢？ : %d",str2 == str3);
        //   1
        NSLog(@"使用NSString的isEqual方法来比较 str1 和 str2 :%d",
              [str1 isEqual:str2]);
        //   1
        
        
        // 重写Animal的 isEqual方法
        Animal *a1 = [[Animal alloc]
                      initWithNameAndAge:@"小明" age:18];
        Animal *a2 = [[Animal alloc]
                      initWithNameAndAge:@"小花" age:18];
        Animal *a3 = [[Animal alloc]
                      initWithNameAndAge:@"小花" age:18];
        NSLog(@"a1 和 a2 是否相等? %d",[a1 isEqual:a2]);
        //   0
        NSLog(@"a2 和 a3 是否相等? %d",[a2 isEqual:a3]);
        //   1
    }
    return 0;
}
