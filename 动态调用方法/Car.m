//
//  Car.m
//  Objective-C-Object-below
//
//  Created by SpiColorPendra on 16/1/18.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import "Car.h"
#import <objc/message.h>
@implementation Car
- (void) move:(NSString*) count
{
    int num = [count intValue];
    for (int i=0; i<num; i++) {
        NSLog(@"%@",[NSString stringWithFormat:@"汽车正在路上走  %d",i]);
    }
}

- (double) addSpeed:(double) factor
{
    //此处希望能动态调用move方法
    //使用performSelector:动态调用move方法
    [self performSelector:@selector(move:)
     withObject:[NSNumber numberWithInt:2]];
    [self performSelector:NSSelectorFromString(@"move:")
    withObject:[NSNumber numberWithInt:2]];
    //使用objc_msgSend调用move:方法
    //objc_msgSend();
    // objc_msgSend()
    objc_msgSend(self,@selector(move:),[NSNumber numberWithInt:3]);
    
    NSLog(@"正在加速....%g",factor);
    return 100 *factor;
}
@end
