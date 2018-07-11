//
//  Template.m
//  7-模板方法模式
//
//  Created by apple on 2018/7/11.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "Template.h"

@implementation Template
- (void)TemplateMethod
{
    // 需要抽象方法，以完成这个method的功能
    [self primitiveOperation1];
    NSLog(@"Template----TemplateMethod");
    [self primitiveOperation2];
}

// 抽象方法
- (void)primitiveOperation1{}
- (void)primitiveOperation2{}
@end
