//
//  Item.m
//  Objective-C-Object-below
//
//  Created by SpiColorPendra on 16/1/18.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import "Item.h"

@implementation Item
//重写该方法作为测试
- (id) init
{
    if (self = [super init]) {
        NSLog(@"Item init方法中: 引用计数为: %ld",self.retainCount);
    }
    return self;
}

- (void) dealloc
{
    NSLog(@"销毁对象");
    [super dealloc];
}


@end
