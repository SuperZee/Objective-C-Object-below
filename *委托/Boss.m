//
//  Boss.m
//  Objective-C-Object-below
//
//  Created by SpiColorPendra on 16/1/18.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import "Boss.h"

@implementation Boss
-(id) init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}
-(void) manage{
    NSLog(@"boss manage");
}
-(void) teach{
    NSLog(@"boss teach");
}
//  注意 这里就是用到了委托 ，
-(void) payoff{
    [self.delegate payoff];
}
-(void) tel{
    [self.delegate tel];
}
@end
