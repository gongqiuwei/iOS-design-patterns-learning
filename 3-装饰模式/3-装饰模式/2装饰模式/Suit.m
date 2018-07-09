//
//  Suit.m
//  3-装饰模式
//
//  Created by apple on 2018/7/8.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "Suit.h"

@implementation Suit
- (void)show
{
    [self addSuit];
    [super show];
}

- (void)addSuit
{
    NSLog(@"  西装");
}
@end
