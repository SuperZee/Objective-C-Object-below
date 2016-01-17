//
//  Output.h
//  Objective-C-Object-below
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//


@protocol Output
// 0到n个方法定义
// 输出
@optional  //  位于该关键字之后、@end之前声明的方法是可选的
- (void) output;
// 输入
@required  //  位于该关键字之后 @end之前 声明的方法是必须的 @required 是默认的
- (void) addData:(NSString*)msg;

@end