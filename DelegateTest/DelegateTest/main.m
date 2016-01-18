//
//  main.m
//  DelegateTest
//
//  Created by SpiColorPendra on 16/1/18.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "AppDelegate.h"
int main(int argc, const char * argv[]) {
    //创建一个AppDelegate，该对象实现了NSApplicationDelegate协议  @interface AppDelegate : NSObject <NSApplicationDelegate>
    AppDelegate* delegate = [[AppDelegate alloc]init];
    //获取NSApplication的单例对象
    [NSApplication sharedApplication];
    //调用静态方法为Cocoa应用设置代理，将应用发生事件委托给Delegate处理
    [NSApp setDelegate:delegate];
    //开始程序
    
    return NSApplicationMain(argc, argv);
}
