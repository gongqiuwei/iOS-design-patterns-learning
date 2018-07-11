//
//  ViewController.m
//  5-工厂方法
//
//  Created by apple on 2018/7/11.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ViewController.h"
#import "ConcreteFactoryA.h"
#import "ConcreteFactoryB.h"

#import "UndergraduateFactory.h"
#import "VolunteerFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    static int i = 0;
    i++;
//    [self test1:i];
    [self test2];
}

- (void)test2
{
    id<LeiFeng> leifeng = [UndergraduateFactory CreateLeiFeng];
    [leifeng BuyRice];
    [leifeng Wash];
    [leifeng Sweep];
    
    // 只需要改变工厂的类名就可以了。。。
    id<LeiFeng> leifeng2 = [VolunteerFactory CreateLeiFeng];
    [leifeng2 BuyRice];
    [leifeng2 Wash];
    [leifeng2 Sweep];
}

- (void)test1:(int)index
{
    int type = index%2;
    Product *p = nil;
    switch (type) {
        case 0:
            p = [ConcreteFactoryA createProduct];
            break;
        case 1:
            p = [ConcreteFactoryB createProduct];
            break;
        default:
            break;
    }
    
    [p productMethod1];
    [p productMethod2];
}
@end
