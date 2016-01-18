//
//  Sec.m
//  Objective-C-Object-below
//
//  Created by SpiColorPendra on 16/1/18.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import "Sec.h"

@implementation Sec
- (id) init{
    if (self = [super init]) {
        
    }
    return self;
}
// boss委托给我的发工资功能
-(void) payoff{
    NSLog(@"sec payoff!");
}
-(void) tel{
    NSLog(@"sec tel");
}
@end
