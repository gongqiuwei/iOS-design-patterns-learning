//
//  GQWCalcuteFactory.m
//  01-简单工厂模式
//
//  Created by apple on 2018/7/5.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "GQWCalcuteFactory.h"
#import "GQWOperationAdd.h"
#import "GQWOperationSub.h"
#import "GQWOperationMul.h"
#import "GQWOperationDiv.h"


@implementation GQWCalcuteFactory
+ (GQWOperation *)createOperationWithOpName:(NSString *)opName
{
    GQWOperation *op = nil;
    if ([opName isEqualToString:@"+"]) {
        op = [GQWOperationAdd new];
    }
    else if ([opName isEqualToString:@"-"]) {
        op = [GQWOperationSub new];
    }
    else if ([opName isEqualToString:@"*"]) {
        op = [GQWOperationMul new];
    }
    else if ([opName isEqualToString:@"/"]) {
        op = [GQWOperationDiv new];
    }
    return op;
}
@end
