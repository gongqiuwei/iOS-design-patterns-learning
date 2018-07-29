//
//  Mediator.h
//  21-中介者模式
//
//  Created by apple on 2018/7/29.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Colleague.h"

@interface Mediator : NSObject
- (void)sendMessage:(NSString *)msg from:(Colleague *)colleague;
@end
