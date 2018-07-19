//
//  Boss.m
//  10-观察者模式
//
//  Created by apple on 2018/7/15.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "Boss.h"

@interface Boss()
@property (nonatomic, strong) NSMutableArray *observers;
@end

@implementation Boss
- (instancetype)init{
    if (self = [super init]) {
        self.observers = @[].mutableCopy;
    }
    return self;
}

- (void)Attach:(id)observer
{
    [self.observers addObject:observer];
}

- (void)Detach:(id)observer
{
    [self.observers removeObject:observer];
}

- (void)Notify
{
    for (id<Observer> observer in self.observers) {
        [observer update];
    }
}
@end
