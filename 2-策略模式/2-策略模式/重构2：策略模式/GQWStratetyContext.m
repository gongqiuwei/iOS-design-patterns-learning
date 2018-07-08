//
//  GQWStratetyContext.m
//  2-策略模式
//
//  Created by apple on 2018/7/8.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "GQWStratetyContext.h"

@interface GQWStratetyContext()
@property (nonatomic, strong) id<CashStrategy> strategy;
@end

@implementation GQWStratetyContext
- (instancetype)initWithCashType:(CashType)type
{
    if (self = [super init]) {
        switch (type) {
            case CashTypeNormal:
                _strategy = [GQWStrategyNormal new];
                break;
            case CashTypeRebeta:
                _strategy = [[GQWStrategyRebate alloc] initWithRebate:0.8];
                break;
            case CashTypeReturn:
                _strategy = [[GQWStrategyReturn alloc] initWithCondition:300 monenyReturn:100];
                break;
            default:
                break;
        }
        
        
    }
    return self;
}

- (double)getResult:(double)money
{
    return [self.strategy acceptCash:money];
}
@end
