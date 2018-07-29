//
//  Abstraction.h
//  18-桥接模式
//
//  Created by apple on 2018/7/29.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Implementor.h"

@interface Abstraction : NSObject

@property (nonatomic, strong) Implementor *imp;

- (void)operation;
@end
