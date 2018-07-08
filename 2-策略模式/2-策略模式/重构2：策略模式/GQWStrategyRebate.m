//
//  GQWStrategyRebate.m
//  2-策略模式
//
//  Created by apple on 2018/7/8.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "GQWStrategyRebate.h"

@interface GQWStrategyRebate()
@property (nonatomic, assign) double rebate;
@end

@implementation GQWStrategyRebate
- (instancetype)initWithRebate:(double)rebate
{
    if (self = [super init]) {
        _rebate = rebate;
    }
    return self;
}

- (double)acceptCash:(double)money
{
    return money * _rebate;
}
@end
