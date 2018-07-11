//
//  IFactory.h
//  5-工厂方法
//
//  Created by apple on 2018/7/11.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LeiFeng.h"

@protocol IFactory <NSObject>
+ (id<LeiFeng>)CreateLeiFeng;
@end
