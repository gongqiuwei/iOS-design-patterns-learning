//
//  LeatherShoes.m
//  3-装饰模式
//
//  Created by apple on 2018/7/8.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "LeatherShoes.h"

@implementation LeatherShoes
- (void)show
{
    [self addLeatherShoes];
    [super show];
}

- (void)addLeatherShoes
{
    NSLog(@"  皮鞋");
}
@end
