//
//  Car.h
//  Objective-C-Object-below
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
@property (nonatomic,copy) NSString* band;
@property (nonatomic,copy) NSString* model;

-(void) drive;
@end
