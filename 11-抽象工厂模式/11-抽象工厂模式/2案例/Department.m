//
//  Department.m
//  11-抽象工厂模式
//
//  Created by apple on 2018/7/16.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "Department.h"

@implementation Department
- (void)insertDepartment{
    NSLog(@"%@--插入一条Department数据", NSStringFromClass([self class]));
}
- (void)getDepartment{
    NSLog(@"%@--读取一条Department数据", NSStringFromClass([self class]));
}
@end
