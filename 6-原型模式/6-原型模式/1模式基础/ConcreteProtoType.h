//
//  ConcreteProtoType.h
//  6-原型模式
//
//  Created by apple on 2018/7/11.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PortoType.h"

@interface ConcreteProtoType : NSObject<PortoType>
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) int age;
@end
