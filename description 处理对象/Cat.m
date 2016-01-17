//
//  Cat.m
//  Objective-C-Object-below
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import "Cat.h"

@implementation Cat
-(id) initWithFoodAndAge:(NSString *)food andAge:(int)age
{
    if (self = [super init]) {
        self.food = food;
        self.age = age;
    }
    return self;
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"<Cat[food = %@, age=%d]>",
            self.food,self.age];
}
@end
