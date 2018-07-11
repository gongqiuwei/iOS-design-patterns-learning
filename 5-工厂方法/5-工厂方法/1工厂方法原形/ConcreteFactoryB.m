//
//  ConcreteFactoryB.m
//  5-工厂方法
//
//  Created by apple on 2018/7/11.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ConcreteFactoryB.h"
#import "ConcreteProductB.h"

@implementation ConcreteFactoryB
+ (Product *)createProduct
{
    return [ConcreteProductB new];
}
@end
