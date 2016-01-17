//
//  Animal.m
//  Objective-C-Object-below
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import "Animal.h"

@implementation Animal

-(id)initWithNameAndAge:(NSString *)name age:(int)age
{
    if (self = [super init]) {
        self.name = name;
        self.age = age;
    }
    return self;
}
//重写isEqual方法
-(BOOL) isEqual:(id)object
{
    // 如果两个对象为同一个对象
    if (self == object) {
        return YES;
    }
    if (object != nil && [object isMemberOfClass:Animal.class]) {
        Animal *target = (Animal*) object;
        //并且当前的对象age和name相等才算相等
        return [self.name isEqual:target.name] && (self.age  == target.age);
    }
    return NO;
}
/* 一般来说重写isEqual方法应该满足一下条件:
 1. 自反性  对于任意 x, [x isEqual:x] 返回真
 2. 对称性 对于任意 x,y 如果 [y isEqual:x]返回真 ,则[x isEqual:y]一定为真
 3. 传递性 对于任意 x,y,z 简写: x=y y=z  则 [x isEqual:z] 一定为真
 4. 一致性 对于任意x,y
 5. 对于任何不是nil的x [x isEqual:nil] 一定返回假
 
 */
@end
