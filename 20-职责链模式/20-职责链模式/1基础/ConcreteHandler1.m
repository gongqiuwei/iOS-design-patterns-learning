//
//  ConcreteHandler1.m
//  20-职责链模式
//
//  Created by apple on 2018/7/29.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ConcreteHandler1.h"

@implementation ConcreteHandler1
- (void)handlerRequest:(int)request
{
    if (request < 10) {
        NSLog(@"ConcreteHandler1--处理");
    } else {
        [self.successor handlerRequest:request];
    }
}
@end
