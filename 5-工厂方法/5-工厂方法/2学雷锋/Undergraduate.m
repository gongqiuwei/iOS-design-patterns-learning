//
//  Undergraduate.m
//  5-工厂方法
//
//  Created by apple on 2018/7/11.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "Undergraduate.h"

@implementation Undergraduate
- (void)BuyRice{
    NSLog(@"%@--买米", NSStringFromClass([self class]));
}
- (void)Sweep{
    NSLog(@"%@--扫地", NSStringFromClass([self class]));
}
- (void)Wash{
    NSLog(@"%@--洗衣", NSStringFromClass([self class]));
}
@end
