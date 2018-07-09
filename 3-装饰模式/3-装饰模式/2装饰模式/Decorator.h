//
//  Decorator.h
//  3-装饰模式
//
//  Created by apple on 2018/7/8.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Wearing.h"
#import "People.h"

// 通过wearing装饰people对象
@interface Decorator : People
@property (nonatomic, strong) People *component;
@end
