//
//  Invoker.m
//  19-命令模式
//
//  Created by apple on 2018/7/29.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "Invoker.h"

@implementation Invoker
- (void)run
{
    [self.command excute];
}
@end
