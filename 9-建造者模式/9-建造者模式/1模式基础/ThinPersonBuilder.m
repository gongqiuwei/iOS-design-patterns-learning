//
//  ThinPersonBuilder.m
//  9-建造者模式
//
//  Created by apple on 2018/7/12.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ThinPersonBuilder.h"

@implementation ThinPersonBuilder
- (void)buildHead
{
    NSLog(@"Thin--head");
}
- (void)buildBody{
    NSLog(@"Thin--body");
}
- (void)buildArmLeft{
    NSLog(@"Thin--ArmLeft");
}
- (void)buildArmRight{
    NSLog(@"Thin--ArmRight");
}
- (void)buildLegLeft{
    NSLog(@"Thin--LegLeft");
}
- (void)buildLegRight{
    NSLog(@"Thin--LegRight");
}
@end
