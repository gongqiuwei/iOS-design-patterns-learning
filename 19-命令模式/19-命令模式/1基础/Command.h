//
//  Command.h
//  19-命令模式
//
//  Created by apple on 2018/7/29.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Receiver.h"

@interface Command : NSObject

@property (nonatomic, strong) Receiver *receiver;

- (void)excute;
@end
