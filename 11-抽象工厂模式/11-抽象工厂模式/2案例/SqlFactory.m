//
//  SqlFactory.m
//  11-抽象工厂模式
//
//  Created by apple on 2018/7/16.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "SqlFactory.h"
#import "SqlUser.h"
#import "SqlDepartment.h"

@implementation SqlFactory
- (User *)createUser
{
    return [SqlUser new];
}

- (Department *)createDepartment
{
    return [SqlDepartment new];
}
@end
