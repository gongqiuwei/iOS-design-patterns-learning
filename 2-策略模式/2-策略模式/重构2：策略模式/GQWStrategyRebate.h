//
//  GQWStrategyRebate.h
//  2-策略模式
//
//  Created by apple on 2018/7/8.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CashStrategy.h"

@interface GQWStrategyRebate : NSObject<CashStrategy>
- (instancetype)initWithRebate:(double)rebate;
@end
