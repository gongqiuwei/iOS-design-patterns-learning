//
//  ConcreteStateB.m
//  12-状态模式
//
//  Created by apple on 2018/7/16.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ConcreteStateB.h"
#import "ConcreteStateC.h"
#import "Context.h"

@implementation ConcreteStateB
- (void)handlerContext:(Context *)context
{
    context.currentState = [ConcreteStateC new];
}
@end
