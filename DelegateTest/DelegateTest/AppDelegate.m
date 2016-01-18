//
//  AppDelegate.m
//  DelegateTest
//
//  Created by SpiColorPendra on 16/1/18.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
@synthesize window;
// 当应用程序将要加载完成时激发该方法
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    //创建NSWindow对象，并赋值给window
    self.window = [[NSWindow alloc]initWithContentRect:
    NSMakeRect(300, 300, 320, 200)
    styleMask:(NSTitledWindowMask | NSMiniaturizableWindowMask
    | NSClosableWindowMask)
     backing:NSBackingStoreBuffered defer:NO];
    //设置窗口标题
    self.window.title = @"Delegate测试";
    //创建NSTextField对象，并赋值给label变量
    NSTextField* label = [[NSTextField alloc]initWithFrame:
                          NSMakeRect(60, 120, 200, 60)];
    //为label设置属性
    [label setSelectable:YES];
    [label setBezeled:YES];
    [label setDrawsBackground:YES];
    [label setStringValue:@"好好学习 ，天天向上"];
    //创建NSButton对象，并赋值给button变量
    NSButton* button = [[NSButton alloc]initWithFrame:
                        NSMakeRect(120, 40, 80, 30)];
    //为button设置属性
    button.title = @"确定";
    [button setBezelStyle:NSRoundedBezelStyle];
    [button setBounds:NSMakeRect(120, 40, 80, 30)];
    //将label，button添加到窗口中
    [self.window.contentView addSubview:label];
    [self.window.contentView addSubview:button];
    
}

//当应用程序加载完成时激发该方法
- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // 把该窗口显示到应用程序前台
    [self.window makeKeyAndOrderFront:self];
}

@end
