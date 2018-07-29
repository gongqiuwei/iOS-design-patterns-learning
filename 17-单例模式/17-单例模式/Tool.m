//
//  Tool.m
//  17-单例模式
//
//  Created by apple on 2018/7/20.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "Tool.h"
static id _instance = nil;

@implementation Tool
+ (instancetype)sharedTool
{
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    if (_instance == nil) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            _instance = [super allocWithZone:zone];
        });
    }
    return _instance;
}


@end
