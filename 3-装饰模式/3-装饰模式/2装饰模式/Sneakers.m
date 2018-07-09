//
//  Sneakers.m
//  3-装饰模式
//
//  Created by apple on 2018/7/8.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "Sneakers.h"

@implementation Sneakers
- (void)show
{
    [self addSneakers];
    [super show];
}
- (void)addSneakers
{
    NSLog(@"  破球鞋");
}
@end
