//
//  CashSuper.h
//  2-策略模式
//
//  Created by apple on 2018/7/8.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#ifndef CashSuper_h
#define CashSuper_h

@protocol CashSuper<NSObject>
- (double)acceptCash:(double)money;
@end

#endif /* CashSuper_h */
