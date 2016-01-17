//
//  Cat.h
//  Objective-C-Object-below
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cat : NSObject
@property (nonatomic,copy) NSString* food;
@property (nonatomic,assign) int age;
- (id) initWithFoodAndAge:(NSString*)food andAge:(int)age;

@end
