//
//  ConcreteFactory2.m
//  11-抽象工厂模式
//
//  Created by apple on 2018/7/16.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ConcreteFactory2.h"
#import "ConcreteProductA2.h"
#import "ConcreteProductB2.h"

@implementation ConcreteFactory2
+ (ProductA *)createProductA
{
    return [ConcreteProductA2 new];
}
+ (ProductB *)createProductB
{
    return [ConcreteProductB2 new];
}
@end
