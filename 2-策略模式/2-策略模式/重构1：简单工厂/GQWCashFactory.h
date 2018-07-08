//
//  GQWCashFactory.h
//  2-策略模式
//
//  Created by apple on 2018/7/8.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CashSuper.h"

typedef NS_ENUM(NSInteger, CashType) {
    CashTypeNormal = 0,     // 正常
    CashTypeRebeta,         // 打折
    CashTypeReturn          // 满减
};

@interface GQWCashFactory : NSObject
+ (id<CashSuper>)createCashAccept:(CashType)type;
@end
