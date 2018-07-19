//
//  ConcreteStateC.m
//  12-状态模式
//
//  Created by apple on 2018/7/16.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ConcreteStateC.h"
#import "ConcreteStateA.h"
#import "Context.h"

@implementation ConcreteStateC
- (void)handlerContext:(Context *)context
{
    context.currentState = [ConcreteStateA new];
}
@end
