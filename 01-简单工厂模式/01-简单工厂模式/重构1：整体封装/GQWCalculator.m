//
//  GQWCalculator.m
//  01-简单工厂模式
//
//  Created by apple on 2018/7/5.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "GQWCalculator.h"
#import "GQWOperationAdd.h"
#import "GQWOperationSub.h"
#import "GQWOperationMul.h"
#import "GQWOperationDiv.h"

@implementation GQWCalculator
/*
 重构1：将业务封装到类中去。业务与界面分离，面向对象 --> 封装特性
 
 缺点：ifelse分支过多(switch分支过多也类似)，如果增加一种情况，也就要增加一个分支??
    每个分支都是透明的，如果不想透明呢？？
 */
+ (NSString *)GetResultWith:(NSString *)numA numberB:(NSString *)numB andOperation:(NSString *)op
{
    double result = 0.0;
    // 计算
    /*
    if ([op isEqualToString:@"+"]) {
        result = numA.doubleValue + numB.doubleValue;
    }
    else if ([op isEqualToString:@"-"]) {
        result = numA.doubleValue - numB.doubleValue;
    }
    else if ([op isEqualToString:@"*"]) {
        result = numA.doubleValue * numB.doubleValue;
    }
    else if ([op isEqualToString:@"/"]) {
        result = numA.doubleValue / numB.doubleValue;
    }
     */
    
    // 重构2
    if ([op isEqualToString:@"+"]) {
        GQWOperation *op = [GQWOperationAdd new];
        op.numA = numA.doubleValue;
        op.numB = numB.doubleValue;
        result = op.getResult;
    }
    else if ([op isEqualToString:@"-"]) {
        GQWOperation *op = [GQWOperationSub new];
        op.numA = numA.doubleValue;
        op.numB = numB.doubleValue;
        result = op.getResult;
    }
    else if ([op isEqualToString:@"*"]) {
        GQWOperation *op = [GQWOperationMul new];
        op.numA = numA.doubleValue;
        op.numB = numB.doubleValue;
        result = op.getResult;
    }
    else if ([op isEqualToString:@"/"]) {
        GQWOperation *op = [GQWOperationDiv new];
        op.numA = numA.doubleValue;
        op.numB = numB.doubleValue;
        result = op.getResult;
    }
    
    return [NSString stringWithFormat:@"%f", result];
}
@end
