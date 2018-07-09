//
//  Person.m
//  3-装饰模式
//
//  Created by apple on 2018/7/8.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "Person.h"

@interface Person()
@property (nonatomic, strong) NSMutableString *wearing;
@end

@implementation Person
- (void)WearTShirts
{
    NSLog(@"  大T恤");
}
- (void)WearBigTrouser
{
    NSLog(@"  垮裤");
}
- (void)WearSneakers
{
    NSLog(@"  破球鞋");
}
- (void)WearSuit
{
    NSLog(@"  西装");
}
- (void)WearTie
{
    NSLog(@"  领带");
}
- (void)WearLeatherShoes
{
    NSLog(@"  皮鞋");
}
- (void)show
{
    NSString *str = [NSString stringWithFormat:@"  装扮后的: %@", _name];
    NSLog(@"%@", str);
}
@end
