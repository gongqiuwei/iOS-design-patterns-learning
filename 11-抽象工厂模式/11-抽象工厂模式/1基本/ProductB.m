//
//  ProductB.m
//  11-抽象工厂模式
//
//  Created by apple on 2018/7/16.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ProductB.h"

@implementation ProductB
- (void)productLog
{
    NSLog(@"name:---%@", NSStringFromClass([self class]));
}
@end
