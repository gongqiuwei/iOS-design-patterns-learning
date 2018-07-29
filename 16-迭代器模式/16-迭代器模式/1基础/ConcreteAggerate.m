//
//  ConcreteAggerate.m
//  16-迭代器模式
//
//  Created by apple on 2018/7/20.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ConcreteAggerate.h"
#import "ConcreteIterator.h"

@interface ConcreteAggerate()
@property (nonatomic, strong) NSMutableArray *list;
@end

@implementation ConcreteAggerate

- (instancetype)init
{
    if (self = [super init]) {
        self.list = [NSMutableArray array];
    }
    return self;
}

- (Iterator *)createIterator
{
    return [[ConcreteIterator alloc] initWithAggerate:self];
}

- (int)count
{
    return self.list.count;
}

- (void)setItem:(id)item atIndex:(int)index
{
    [self.list insertObject:item atIndex:index];
}

- (id)itemAtIndex:(int)index
{
    return self.list[index];
}
@end
