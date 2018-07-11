//
//  TestPaper.m
//  7-模板方法模式
//
//  Created by apple on 2018/7/11.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "TestPaper.h"

@implementation TestPaper
- (void)question1
{
    NSLog(@"问题一: 你的名字是：");
    NSLog(@"答案一: %@", [self answer1]);
}
- (void)question2{
    NSLog(@"问题二: 你的籍贯是：");
    NSLog(@"答案二: %@", [self answer2]);
}

- (NSString *)answer1{
    return @"";
}
- (NSString *)answer2{
    return @"";
}
@end
