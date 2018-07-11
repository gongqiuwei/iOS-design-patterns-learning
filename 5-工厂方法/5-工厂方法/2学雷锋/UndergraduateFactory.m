//
//  UndergraduateFactory.m
//  5-工厂方法
//
//  Created by apple on 2018/7/11.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "UndergraduateFactory.h"
#import "Undergraduate.h"

@implementation UndergraduateFactory
+ (id<LeiFeng>)CreateLeiFeng
{
    return [Undergraduate new];
}
@end
