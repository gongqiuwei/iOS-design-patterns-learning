//
//  People.h
//  3-装饰模式
//
//  Created by apple on 2018/7/8.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Wearing.h"

// 通过waring协议装饰自己
@interface People : NSObject<Wearing>

@property (nonatomic, copy) NSString *name;

- (void)show;
@end
