//
//  ConcreteHandler2.m
//  20-职责链模式
//
//  Created by apple on 2018/7/29.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ConcreteHandler2.h"

@implementation ConcreteHandler2
- (void)handlerRequest:(int)request
{
    if (request < 100) {
        NSLog(@"ConcreteHandler2--处理");
    } else {
        [self.successor handlerRequest:request];
    }
}
@end
