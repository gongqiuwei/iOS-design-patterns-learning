//
//  Iterator.h
//  16-迭代器模式
//
//  Created by apple on 2018/7/20.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Aggerate;

// 抽象迭代类
@interface Iterator : NSObject
- (instancetype)initWithAggerate:(Aggerate *)agg;
- (id)first;
- (id)next;
- (BOOL)isDone;
- (id)currentItem;
@end
