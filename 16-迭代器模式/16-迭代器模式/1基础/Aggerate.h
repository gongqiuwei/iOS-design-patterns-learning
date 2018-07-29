//
//  Aggerate.h
//  16-迭代器模式
//
//  Created by apple on 2018/7/20.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iterator.h"

@interface Aggerate : NSObject
- (Iterator *)createIterator;
- (void)setItem:(id)item atIndex:(int)index;
- (id)itemAtIndex:(int)index;
- (int)count;
@end
