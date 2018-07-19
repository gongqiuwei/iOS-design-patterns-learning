//
//  Client.m
//  13-适配器模式
//
//  Created by apple on 2018/7/19.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "Client.h"

@interface Client()
@property (nonatomic, strong) Target *target;
@end

@implementation Client
- (instancetype)initWitTarget:(Target *)target;
{
    if (self = [super init]) {
        _target = target;
    }
    return self;
}

-(void)doSomething{
    [self.target request];
}
@end
