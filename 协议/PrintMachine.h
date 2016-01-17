//
//  PrintMachine.h
//  Objective-C-Object-below
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Printable.h"
// 打印机在接口部分可以指定类的继承 以及遵守的协议
// 类来实现协议
@interface PrintMachine : NSObject <Printable>

@end
