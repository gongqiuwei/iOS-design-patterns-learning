//
//  Facade.m
//  8-外观模式
//
//  Created by apple on 2018/7/12.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "Facade.h"
#import "SubSystemOne.h"
#import "SubSystemTwo.h"

@interface Facade()
@property (nonatomic, strong) SubSystemOne *one;
@property (nonatomic, strong) SubSystemTwo *two;
@end

@implementation Facade

- (instancetype)init
{
    if (self = [super init]) {
        self.one = [SubSystemOne new];
        self.two = [SubSystemTwo new];
    }
    return self;
}

- (void)Method1{
    // 利用子系统进行工作
    [self.one sub1];
    [self.two sub2];
}
- (void)Methos2{
    [self.two sub2];
}
@end
