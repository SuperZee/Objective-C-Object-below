//
//  Printable.h
//  Objective-C-Object-below
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#ifndef Printable_h
#define Printable_h


#endif /* Printable_h */
// 定义打印机协议
#import <Foundation/Foundation.h>
#import "Productable.h"
#import "Output.h"
// 继承两个协议
@protocol Printable <Output,Productable>

//定义协议方法
- (NSString*) printColor;

@end