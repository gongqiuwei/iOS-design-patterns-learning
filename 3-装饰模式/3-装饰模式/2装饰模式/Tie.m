//
//  Tie.m
//  3-装饰模式
//
//  Created by apple on 2018/7/8.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "Tie.h"

@implementation Tie
- (void)show
{
    [self addTie];
    [super show];
}

- (void)addTie
{
    NSLog(@"  领带");
}
@end
