//
//  Memento.h
//  14-备忘录模式
//
//  Created by apple on 2018/7/19.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>

// 备忘录
@interface Memento : NSObject

// 对Originator的宽接口，要保存的state状态(可能不止一个state参数)
- (instancetype)initWithState:(NSString *)state;

// 对外只读(不让Caretaker类去修改)---> 对Caretaker的窄接口
@property (nonatomic, copy, readonly) NSString *state;
@end
