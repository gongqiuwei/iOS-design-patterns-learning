//
//  User.m
//  11-抽象工厂模式
//
//  Created by apple on 2018/7/16.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "User.h"

@implementation User
- (void)insertUser{
    NSLog(@"%@--插入一条user数据", NSStringFromClass([self class]));
}
- (void)getUser{
    NSLog(@"%@--读取一条user数据", NSStringFromClass([self class]));
}
@end
