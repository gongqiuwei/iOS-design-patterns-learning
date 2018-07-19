//
//  Factory.h
//  11-抽象工厂模式
//
//  Created by apple on 2018/7/16.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"
#import "Department.h"

@interface ServerFactory : NSObject
- (User *)createUser;
- (Department *)createDepartment;
@end
