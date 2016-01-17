//
//  NSString+lee.h
//  Objective-C-Object-below
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
// category的定义:
//          已有的类 + 类别名
// 类别中通常只定义方法
@interface NSNumber (lee)
// 方法实现
- (NSNumber*) add:(double)num2;
- (NSNumber*) substract:(double)num2;
- (NSNumber*) multiply:(double)num2;
- (NSNumber*) divide:(double)num2;
@end
