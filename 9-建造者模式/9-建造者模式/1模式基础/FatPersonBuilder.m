//
//  FatPersonBuilder.m
//  9-建造者模式
//
//  Created by apple on 2018/7/12.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "FatPersonBuilder.h"

@implementation FatPersonBuilder
- (void)buildHead
{
    NSLog(@"Fat--head");
}
- (void)buildBody{
    NSLog(@"Fat--body");
}
- (void)buildArmLeft{
    NSLog(@"Fat--ArmLeft");
}
- (void)buildArmRight{
    NSLog(@"Fat--ArmRight");
}
- (void)buildLegLeft{
    NSLog(@"Fat--LegLeft");
}
- (void)buildLegRight{
    NSLog(@"Fat--LegRight");
}
@end
