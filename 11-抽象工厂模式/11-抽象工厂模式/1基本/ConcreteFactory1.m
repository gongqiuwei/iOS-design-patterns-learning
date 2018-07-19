//
//  ConcreteFactory1.m
//  11-抽象工厂模式
//
//  Created by apple on 2018/7/16.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ConcreteFactory1.h"
#import "ConcreteProductA1.h"
#import "ConcreteProductB1.h"

@implementation ConcreteFactory1
+ (ProductA *)createProductA
{
    return [ConcreteProductA1 new];
}
+ (ProductB *)createProductB
{
    return [ConcreteProductB1 new];
}
@end
