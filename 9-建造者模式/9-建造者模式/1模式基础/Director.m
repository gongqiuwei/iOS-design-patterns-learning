//
//  Director.m
//  9-建造者模式
//
//  Created by apple on 2018/7/12.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "Director.h"

@interface Director()
@property (nonatomic, strong) id<PersonBuilder> builder;
@end

@implementation Director
- (instancetype)initWithBuilder:(id<PersonBuilder>)builder
{
    if (self = [super init]) {
        self.builder = builder;
    }
    return self;
}

- (void)createPerson{
    [self.builder buildHead];
    [self.builder buildBody];
    [self.builder buildArmLeft];
    [self.builder buildArmRight];
    [self.builder buildLegLeft];
    [self.builder buildLegRight];
}
@end
