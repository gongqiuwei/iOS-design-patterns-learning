//
//  Handler.h
//  20-职责链模式
//
//  Created by apple on 2018/7/29.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Handler : NSObject

// 下一级处理者
@property (nonatomic, strong) Handler *successor;

// 处理请求
- (void)handlerRequest:(int)request;
@end
