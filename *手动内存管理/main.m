//
//  main.m
//  *手动内存管理
//
//  Created by SpiColorPendra on 16/1/18.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"
int main(int argc, const char * argv[]) {

        // OC程序员可以用的内存回收机制 3种:
        // 1.手动引用计数和自动释放池
        // 2.自动引用计数ARC
        // 3.自动垃圾回收   Java才支持
        // OC使用了一种被称为引用计数 Reference Counting 来跟踪对象的状态：
        // 每个对象都有一个与之关联的整数，这个整数被称为引用计数器，正常情况下，当一段代码需要访问某个对象时，
        // 该对象的计数器+1，当这段代码不需要访问该对象，引用计数减1，当引用计数减为0时，表明程序已经不再需要该对象
        // 系统就会回收该对象所占用的内存
        
        //系统在销毁对象之前 会自动调用dealloc方法 来执行回收操作， 该对象还持有其他对象的引用，此时必须重写dealloc方法，在该方法中释放该对象持有的其他对象，通常就是调用被持有对象的release方法 将引用计数减1
        // 注意：
        //     引用计数减1 并不能释放对象，  当一个对象引用计数减为0时，系统会销毁该对象，如果程序在dealloc方法中被持有对象的引用计数减1之后，该持有对象的引用计数变为0 说明该被持有对象不再被其他指针所引用，因此系统会回收它。如果被持有对象的引用计数减1后 任然大于0 说明该持有对象还有被其他指针所引用，或被其他对象所持有，因此系统不该去回收它，也不会去回收它。
        // 当对象被销毁后，引用计数变为0 并且系统自动调用额dealloc方法 此时对象已经不再存在，如果有一个指针指向这个被销毁的对象，这个指针就被称为悬空指针， (Dangling Pointer) 调用悬空指针指向对象的方法时，程序往往会出现未知的错误，
        // 手动引用计数回收内存的标准是 : 当一个对象的引用计数为0  就表明程序不再需要该对象，从而通知系统回收该对象所占用的内存
        //  注意！ ：
        //      千万不要主动去调用对象的dealloc方法,
        // 当程序调用方法名 alloc new copy mutabaleCopy开头的方法来创建对象时 对象的引用计数+1
        Item *item = [[Item alloc]init];
        NSLog(@"%ld",item.retainCount);
        
        [item retain]; // +1 = 2
        NSLog(@"%ld",item.retainCount);
        
        [item retain]; // +1 = 3
        NSLog(@"%ld",item.retainCount);
        
        [item release];// -1 = 2
        NSLog(@"%ld",item.retainCount);
        
        [item retain];// +1 = 3
        NSLog(@"%ld",item.retainCount);
        
        [item release]; // -1 = 2
        NSLog(@"%ld",item.retainCount);
        
        [item release]; // -1 = 1
        NSLog(@"%ld",item.retainCount);
        
        [item release]; // -1 = 0;
        // 系统会自动调用该对象dealloc销毁它
        
        //手动引用计数的思想
        //    谁(包括对象、函数、等)把对象的引用计数 +
        //    谁就要负责在临死前把对象的引用计数 -1
        // 任何实体在结束前应该把其他对象的引用计数恢复到开始前的状态
    
    return 0;
}
