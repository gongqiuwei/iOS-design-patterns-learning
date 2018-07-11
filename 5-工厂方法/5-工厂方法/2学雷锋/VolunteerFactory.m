//
//  VolunteerFactory.m
//  5-工厂方法
//
//  Created by apple on 2018/7/11.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "VolunteerFactory.h"
#import "Volunteer.h"

@implementation VolunteerFactory
+(id<LeiFeng>)CreateLeiFeng
{
    return [Volunteer new];
}
@end
