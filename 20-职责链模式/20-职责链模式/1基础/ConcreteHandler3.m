//
//  ConcreteHandler3.m
//  20-职责链模式
//
//  Created by apple on 2018/7/29.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ConcreteHandler3.h"

@implementation ConcreteHandler3
- (void)handlerRequest:(int)request
{
    if (request < 1000) {
        NSLog(@"ConcreteHandler3--处理");
    } else {
        // 如果没有successor那么就不会处理了
        [self.successor handlerRequest:request];
    }
}
@end
