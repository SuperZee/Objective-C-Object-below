//
//  Boss.h
//  Objective-C-Object-below
//
//  Created by SpiColorPendra on 16/1/18.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
// 记得导入你发布的招聘公告
#import "SecProtocol.h"
@interface Boss : NSObject
//  并且这个属性来接受这个公告
@property (nonatomic,retain) id<SecProtocol> delegate;
//管理
-(void) manage;
//教导新员工
-(void) teach;
//打电话
-(void) tel;
//发工资
-(void) payoff;
@end
