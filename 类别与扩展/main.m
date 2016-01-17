//
//  main.m
//  类别
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+lee.h"
int main(int argc, const char * argv[]) {
    // 类别是什么概览呢？ Java中没有接触到 但是Java中有抽象方法 抽象类
    //  在项目的开发过程中，有时候需要为已有的类扩展一些新的行为，关于这种扩展方式，最容易想到的就是继承 子类可以在父类的基础上添加新的方法，甚至重写父类已有的方法
    // 但有些时候，继承不是最好的选择,比如 我们希望为NSNumber类新增一些方法，***"但是由于NSNumber实际上是一个类簇（cluster）的前端类
    // 比如 通过[NSNumberWithInt:5]方法生成的NSNumber对象其实只是NSNumber子类的实例,那么我们及时为NSNumber派生子类也没有任何意义,派生的子类对NSNumber没有任何影响
    // 我们想要实现的效果是 为NSNumer添加的方法 能在NSNumber的各个子类中使用
    // 这时就绪借助 category 来实现
    
    // 因为OC没有提供抽象类语法的支持，而在实际开发中总有需要抽象类的时候，此时就会选择定义一个父类,并为该父类派生多个子类,其他程序使用这些类时，总是面向父类编程,当程序调用父类的初始化方法,静态方法来返回对象时，实际上返回的是子类的实例对象，这系列的类被称为一个类簇(cluster)这个父类也就模拟了抽象类的功能
    @autoreleasepool {
        // 类别 category
        NSNumber* num = [NSNumber numberWithInt:5];
        NSLog(@"add method :5 + 3.4 = %@",[num add:3.4]);
        NSLog(@"sub method :5 - 3.4 = %@",[num substract:3.4]);
        NSLog(@"mul method :5 * 3.4 = %@",[num multiply:3.4]);
        NSLog(@"div method :5 / 3.4 = %@",[num divide:3.4]);
        
    }
    return 0;
}
