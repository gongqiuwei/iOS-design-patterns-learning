//
//  AccessFactory.m
//  11-抽象工厂模式
//
//  Created by apple on 2018/7/16.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "AccessFactory.h"
#import "AccessUser.h"
#import "AccessDepartment.h"

@implementation AccessFactory
- (User *)createUser
{
    return [AccessUser new];
}

- (Department *)createDepartment
{
    return [AccessDepartment new];
}
@end
