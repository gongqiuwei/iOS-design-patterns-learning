//
//  ConcreteMediator.m
//  21-中介者模式
//
//  Created by apple on 2018/7/29.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ConcreteMediator.h"

@implementation ConcreteMediator

- (void)sendMessage:(NSString *)msg from:(Colleague *)colleague
{
    if (colleague == self.c1) {
        [self.c2 notify:msg];
    } else {
        [self.c1 notify:msg];
    }
}

@end
