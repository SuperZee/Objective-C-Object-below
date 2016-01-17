//
//  main.m
//  description 处理对象
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Cat.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建一个Person对象
        Person *p = [[Person alloc]initWithName:@"SpiColorPendra"];
        //打印 p
        NSLog(@"%@",p);
        //<Person: 0x1004000f0>
        NSLog(@"%@",[p description]);
        //<Person: 0x1038001e0>
        // 直接打印对象p 实际上就是调用了 p的description方法;
        // 但是我们不需要对象的地址值，我们需要对象的info信息
        
        //description 方法是NSObject的一个实例方法，非常特殊。
        // 它表示“自我描述”的一个方法
        // 程序员直接打印对象，系统将会输出该对象的“自我描述”信息
        // 打印的<Person: 0x1038001e0>并不是想要的描述信息
        // 所以必须重写description方法
        // 重写后输出的格式通常是 <类名[实例变量1 = 值1, 实例变量值2 = 值2,...]>
        
        // 测试猫类 重写的description方法
        Cat *c = [[Cat alloc]initWithFoodAndAge:@"miko" andAge:3];
        NSLog(@"%@",c);
        //<Cat[food = miko, age=3]>
    }
    return 0;
}
