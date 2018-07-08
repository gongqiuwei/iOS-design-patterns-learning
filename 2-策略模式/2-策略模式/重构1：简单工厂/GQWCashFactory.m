//
//  GQWCashFactory.m
//  2-策略模式
//
//  Created by apple on 2018/7/8.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "GQWCashFactory.h"
#import "GQWCashNormal.h"
#import "GQWCashRebate.h"

@implementation GQWCashFactory
+ (id<CashSuper>)createCashAccept:(CashType)type
{
    id<CashSuper> cash = nil;
    switch (type) {
        case CashTypeNormal:
            cash = [GQWCashNormal new];
            break;
        case CashTypeRebeta:
            cash = [GQWCashRebate new];
            break;
        default:
            break;
    }
    
    return cash;
}
@end
