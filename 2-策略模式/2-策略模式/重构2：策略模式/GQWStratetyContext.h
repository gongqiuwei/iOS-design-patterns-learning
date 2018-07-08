//
//  GQWStratetyContext.h
//  2-策略模式
//
//  Created by apple on 2018/7/8.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GQWStrategyNormal.h"
#import "GQWStrategyRebate.h"
#import "GQWStrategyReturn.h"

typedef NS_ENUM(NSInteger, CashType) {
    CashTypeNormal = 0,     // 正常
    CashTypeRebeta,         // 打折
    CashTypeReturn          // 满减
};

@interface GQWStratetyContext : NSObject

- (instancetype)initWithCashType:(CashType)type;

// context提供给客户端的接口
- (double)getResult:(double)money;
@end
