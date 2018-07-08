//
//  GQWStrategyReturn.m
//  2-策略模式
//
//  Created by apple on 2018/7/8.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "GQWStrategyReturn.h"

@interface GQWStrategyReturn()
@property (nonatomic, assign) double condition;
@property (nonatomic, assign) double moneyReturn;
@end

@implementation GQWStrategyReturn
- (instancetype)initWithCondition:(double)condition monenyReturn:(double)moneyReturn
{
    if (self = [super init]) {
        _condition = condition;
        _moneyReturn = moneyReturn;
    }
    return self;
}

// 满减
- (double)acceptCash:(double)money
{
    // 判断
    int c = floor(money / _condition);
    
    return money - c * _moneyReturn;
}
@end
