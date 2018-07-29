//
//  ConcreteColleague1.m
//  21-中介者模式
//
//  Created by apple on 2018/7/29.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ConcreteColleague1.h"
#import "Mediator.h"

@implementation ConcreteColleague1
- (void)notify:(NSString *)message
{
    NSLog(@"ConcreteColleague1收到：--%@", message);
}

- (void)send:(NSString *)message
{
    [self.m sendMessage:message from:self];
}
@end
