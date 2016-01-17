//
//  Person.m
//  Objective-C-Object-below
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import "Person.h"

@implementation Person
-(id)initWithName:(NSString *)name
{
    if (self = [super init]) {
        self.name = name;
    }
    return self;
}
-(void)info
{
    NSLog(@"name = %@",self.name);
}
@end
