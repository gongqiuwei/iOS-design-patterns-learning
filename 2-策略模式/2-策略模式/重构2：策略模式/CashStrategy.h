//
//  CashStrategy.h
//  2-策略模式
//
//  Created by apple on 2018/7/8.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#ifndef CashStrategy_h
#define CashStrategy_h

@protocol CashStrategy<NSObject>
- (double)acceptCash:(double)money;
@end

#endif /* CashStrategy_h */
