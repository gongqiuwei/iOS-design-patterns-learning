//
//  ConcreteIterator.m
//  16-迭代器模式
//
//  Created by apple on 2018/7/20.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ConcreteIterator.h"
#import "ConcreteAggerate.h"

@interface ConcreteIterator()
@property (nonatomic, strong) Aggerate* agg;
@property (nonatomic, assign) int current;
@end

@implementation ConcreteIterator
- (instancetype)initWithAggerate:(Aggerate *)agg
{
    if (self = [super init]) {
        self.agg = agg;
        self.current = 0;
    }
    return self;
}

- (id)first
{
    return [self.agg itemAtIndex:0];
}

- (id)next
{
    id result = nil;
    _current++;
    if (_current < self.agg.count) {
        result = [self.agg itemAtIndex:_current];
    }
    return result;
}

- (BOOL)isDone
{
    return _current >= self.agg.count ? YES : NO;
}

- (id)currentItem
{
    return [self.agg itemAtIndex:_current];
}
@end
