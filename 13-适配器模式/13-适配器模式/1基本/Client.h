//
//  Client.h
//  13-适配器模式
//
//  Created by apple on 2018/7/19.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Target.h"

@interface Client : NSObject
- (instancetype)initWitTarget:(Target *)target;
- (void)doSomething;
@end
