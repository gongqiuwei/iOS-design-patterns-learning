//
//  Context.h
//  12-状态模式
//
//  Created by apple on 2018/7/16.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "State.h"

@interface Context : NSObject
@property (nonatomic, strong) State *currentState;

- (instancetype)initWithState:(State *)state;
- (void)request;

- (void)currentStateLog;
@end
