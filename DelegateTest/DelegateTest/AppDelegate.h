//
//  AppDelegate.h
//  DelegateTest
//
//  Created by SpiColorPendra on 16/1/18.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

//定义一个属性来代表程序窗口
//委托是一种设计模式，是一种设计思想。
@property (strong) NSWindow *window;

@end

