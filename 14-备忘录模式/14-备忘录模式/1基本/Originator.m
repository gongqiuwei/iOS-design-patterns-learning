//
//  Originator.m
//  14-备忘录模式
//
//  Created by apple on 2018/7/19.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "Originator.h"

@implementation Originator
- (Memento *)createMemento
{
    Memento *memento = [[Memento alloc] initWithState:self.state];
    return memento;
}

- (void)setMemento:(Memento *)memento
{
    self.state = memento.state;
}

- (void)show
{
    NSLog(@"当前状态---%@", self.state);
}
@end
