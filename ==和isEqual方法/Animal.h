//
//  Animal.h
//  Objective-C-Object-below
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject
// 重写isEqual方法
@property int age;
@property NSString* name;
- (BOOL) isEqual:(id)object;
- (id)initWithNameAndAge:(NSString *)name age:(int)age;

@end
