//
//  ViewController.m
//  4-代理模式
//
//  Created by apple on 2018/7/9.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ViewController.h"
#import "ShchoolGirl.h"
#import "Pursuit.h"

#import "Proxy.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    ShchoolGirl *mm = [ShchoolGirl new];
    mm.name = @"李娇娇";
    
//    Pursuit *p = [Pursuit new];
//    p.mm = mm;
//
//    p.giveDolls;
//    p.giveFlowers;
//    p.giveChocolate;
    
    Proxy *pr = [[Proxy alloc] initWithMM:mm];
    pr.giveDolls;
    pr.giveFlowers;
    pr.giveChocolate;
}


@end
