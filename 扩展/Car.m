//
//  Car.m
//  Objective-C-Object-below
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import "Car.h"
#import "Car+drive.h"
@implementation Car

- (void) drive
{
    NSLog(@"%@汽车在路上奔驰",self);
}

-(void) drive:(NSString*)owner
{
    NSLog(@"%@正驾驶%@汽车在路上奔驰",owner,self);
}
-(NSString*)description
{
    return [NSString stringWithFormat:@"<Car[brand = %@,model=%@,color=%@]>",
            self.band,self.model,self.color];
}
@end
