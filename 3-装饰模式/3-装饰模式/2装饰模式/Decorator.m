//
//  Decorator.m
//  3-装饰模式
//
//  Created by apple on 2018/7/8.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "Decorator.h"

@interface Decorator()
@end

@implementation Decorator

// 基类方法
// 对Component的operation方法进行装饰，添加
// 对people的show方法进行装饰
- (void)show
{
    [self.component show];
}
@end
