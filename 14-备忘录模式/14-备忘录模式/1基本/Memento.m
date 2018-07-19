//
//  Memento.m
//  14-备忘录模式
//
//  Created by apple on 2018/7/19.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "Memento.h"

@interface Memento()
@property (nonatomic, copy) NSString *state;
@end

@implementation Memento
- (instancetype)initWithState:(NSString *)state
{
    if (self = [super init]) {
        self.state = state;
    }
    return self;
}
@end
