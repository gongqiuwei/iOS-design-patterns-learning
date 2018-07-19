//
//  ConcreteStateA.m
//  12-状态模式
//
//  Created by apple on 2018/7/16.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ConcreteStateA.h"
#import "ConcreteStateB.h"
#import "Context.h"

@implementation ConcreteStateA
- (void)handlerContext:(Context *)context
{
    context.currentState = [ConcreteStateB new];
}
@end
