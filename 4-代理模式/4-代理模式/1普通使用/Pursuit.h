//
//  Pursuit.h
//  4-代理模式
//
//  Created by apple on 2018/7/9.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ShchoolGirl.h"

@interface Pursuit : NSObject
@property (nonatomic, strong) ShchoolGirl *mm;

- (void)giveDolls;
- (void)giveFlowers;
- (void)giveChocolate;
@end
