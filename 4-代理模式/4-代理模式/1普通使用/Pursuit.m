//
//  Pursuit.m
//  4-代理模式
//
//  Created by apple on 2018/7/9.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "Pursuit.h"

@implementation Pursuit
- (void)giveDolls{
    NSLog(@"%@ 送你洋娃娃", _mm.name);
}
- (void)giveFlowers{
    NSLog(@"%@ 送你鲜花", _mm.name);
}
- (void)giveChocolate{
    NSLog(@"%@ 送你巧克力", _mm.name);
}
@end
