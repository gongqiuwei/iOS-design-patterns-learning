//
//  ConcreteProtoType.m
//  6-原型模式
//
//  Created by apple on 2018/7/11.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ConcreteProtoType.h"

@implementation ConcreteProtoType
- (id)Clone
{
    ConcreteProtoType *newT = [[ConcreteProtoType alloc] init];
    newT.name = self.name;
    newT.age = self.age;
    
    return newT;
}
@end
