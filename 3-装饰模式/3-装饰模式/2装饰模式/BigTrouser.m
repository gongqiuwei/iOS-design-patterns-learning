//
//  BigTrouser.m
//  3-装饰模式
//
//  Created by apple on 2018/7/8.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "BigTrouser.h"

@implementation BigTrouser
- (void)show
{
    [self addTShirt];
    [super show];
}

- (void)addTShirt
{
    NSLog(@"  垮裤");
}
@end
