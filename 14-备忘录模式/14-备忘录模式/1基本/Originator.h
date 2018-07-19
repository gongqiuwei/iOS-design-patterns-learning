//
//  Originator.h
//  14-备忘录模式
//
//  Created by apple on 2018/7/19.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Memento.h"

// 发起人
@interface Originator : NSObject
@property (nonatomic, copy) NSString *state;

- (Memento *)createMemento;
- (void)setMemento:(Memento *)memento;

- (void)show;
@end
