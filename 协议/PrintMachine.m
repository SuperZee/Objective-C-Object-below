//
//  PrintMachine.m
//  Objective-C-Object-below
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import "PrintMachine.h"
#define MAX_CACHE_LINE 10
@implementation PrintMachine
{
    NSString* printData[MAX_CACHE_LINE];//记录所有需要缓存的打印数据
    NSString* printColor;
    int dataNum; //需要打印的行数
}
- (void) output
{
    //只要还有作业，继续打印
    while (dataNum > 0) {
        NSLog(@"打印机使用%@打印:%@",self.printColor,printData[0]);
        //将剩下的作用减1
        dataNum--;
        //将作业整体向前移动一位
        for (int i=0; i<dataNum; i++) {
            printData[i] = printData[i+1];
        }
    }
}

- (void) addData:(NSString *)msg
{
    if (dataNum >= MAX_CACHE_LINE)
    {
        NSLog(@"输出队列已满，添加失败");
    }
    else
    {
        //添加打印数据到队列
        printData[dataNum++] = msg;
    }
}

-(NSDate*)getProduceTime
{
    return [[NSDate alloc]init];
}
-(NSString*) printColor
{
    return @"红色";
}
@end
