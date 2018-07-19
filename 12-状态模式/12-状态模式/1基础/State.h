//
//  State.h
//  12-状态模式
//
//  Created by apple on 2018/7/16.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Context;

@interface State : NSObject
- (void)handlerContext:(Context *)context;
@end
