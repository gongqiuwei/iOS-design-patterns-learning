//
//  GQWCashRebate.m
//  2-策略模式
//
//  Created by apple on 2018/7/8.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "GQWCashRebate.h"

@implementation GQWCashRebate
- (double)acceptCash:(double)money
{
    return money * 0.8;
}
@end
