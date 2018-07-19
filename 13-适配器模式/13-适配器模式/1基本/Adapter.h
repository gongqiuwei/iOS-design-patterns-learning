//
//  Adapter.h
//  13-适配器模式
//
//  Created by apple on 2018/7/19.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "Target.h"
#import "Adaptee.h"

@interface Adapter : Target
- (instancetype)initWitAdaptee:(Adaptee *)adaptee;
@end
