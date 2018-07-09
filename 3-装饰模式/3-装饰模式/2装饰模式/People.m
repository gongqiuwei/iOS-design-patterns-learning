//
//  People.m
//  3-装饰模式
//
//  Created by apple on 2018/7/8.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "People.h"


@implementation People
- (void)show
{
    NSString *str = [NSString stringWithFormat:@"  装扮后的: %@", _name];
    NSLog(@"%@", str);
}

@end
