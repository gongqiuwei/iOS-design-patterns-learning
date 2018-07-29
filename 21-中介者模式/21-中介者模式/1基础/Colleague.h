//
//  Colleague.h
//  21-中介者模式
//
//  Created by apple on 2018/7/29.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Mediator;

@interface Colleague : NSObject
@property (nonatomic, weak) Mediator *m;

// 接收消息
- (void)notify:(NSString *)message;

// 发送消息
- (void)send:(NSString *)message;
@end
