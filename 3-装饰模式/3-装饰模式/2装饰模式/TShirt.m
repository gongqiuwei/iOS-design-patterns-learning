//
//  TShirt.m
//  3-装饰模式
//
//  Created by apple on 2018/7/8.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "TShirt.h"

@implementation TShirt


- (void)show
{
    [self addTShirt];
    [super show];
}

- (void)addTShirt
{
    NSLog(@"  大T恤");
}
@end
