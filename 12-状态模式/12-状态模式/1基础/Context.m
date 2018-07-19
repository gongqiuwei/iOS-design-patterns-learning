//
//  Context.m
//  12-状态模式
//
//  Created by apple on 2018/7/16.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "Context.h"
#import "ConcreteStateA.h"
#import "ConcreteStateB.h"
#import "ConcreteStateC.h"

@interface Context()

@end

@implementation Context
- (instancetype)init
{
    return [self initWithState:[ConcreteStateA new]];
}

- (instancetype)initWithState:(State *)state
{
    if (self = [super init]) {
        _currentState = state;
    }
    return self;
}
- (void)request
{
    [self.currentState handlerContext:self];
}
- (void)currentStateLog
{
    NSLog(@"当前状态：%@", NSStringFromClass([self.currentState class]));
}
@end
