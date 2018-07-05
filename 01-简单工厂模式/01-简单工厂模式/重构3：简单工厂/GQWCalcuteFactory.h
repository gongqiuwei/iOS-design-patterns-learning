//
//  GQWCalcuteFactory.h
//  01-简单工厂模式
//
//  Created by apple on 2018/7/5.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GQWOperation.h"

@interface GQWCalcuteFactory : NSObject
// 根据运算符创建相应的类
+ (GQWOperation *)createOperationWithOpName:(NSString *)opName;
@end
