//
//  Adapter.m
//  13-适配器模式
//
//  Created by apple on 2018/7/19.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "Adapter.h"

@interface Adapter()
@property (nonatomic, strong) Adaptee *adaptee;
@end

@implementation Adapter
- (instancetype)initWitAdaptee:(Adaptee *)adaptee
{
    if (self = [super init]) {
        _adaptee = adaptee;
    }
    return self;
}

- (void)request{
    [self.adaptee specialRequest];
}
@end
