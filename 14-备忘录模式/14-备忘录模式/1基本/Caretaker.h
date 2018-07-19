//
//  Caretaker.h
//  14-备忘录模式
//
//  Created by apple on 2018/7/19.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Memento.h"

// 管理者
@interface Caretaker : NSObject
@property (nonatomic, strong) Memento *memento;
@end
