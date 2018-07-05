//
//  GQWCalculator.h
//  01-简单工厂模式
//
//  Created by apple on 2018/7/5.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GQWCalculator : NSObject
+ (NSString *)GetResultWith:(NSString *)numA numberB:(NSString *)numB andOperation:(NSString *)op;
@end
