//
//  Proxy.m
//  4-代理模式
//
//  Created by apple on 2018/7/9.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "Proxy.h"
#import "RealSubject.h"

@interface Proxy()
@property (nonatomic, strong) RealSubject *real;
@end

@implementation Proxy
- (instancetype)initWithMM:(ShchoolGirl *)mm
{
    if (self = [super init]) {
        self.real = [RealSubject new];
        self.real.mm = mm;
    }
    return self;
}

- (void)giveDolls{
    [self.real giveDolls];
}
- (void)giveFlowers{
    [self.real giveFlowers];
}
- (void)giveChocolate{
    [self.real giveChocolate];
}

@end
