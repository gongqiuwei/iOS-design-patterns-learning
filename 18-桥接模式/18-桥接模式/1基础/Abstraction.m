//
//  Abstraction.m
//  18-桥接模式
//
//  Created by apple on 2018/7/29.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "Abstraction.h"

@interface Abstraction()

@end

@implementation Abstraction

- (void)operation{
    [self.imp operationImp];
}
@end
