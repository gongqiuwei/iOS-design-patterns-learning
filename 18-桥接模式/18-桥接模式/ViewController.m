//
//  ViewController.m
//  18-桥接模式
//
//  Created by apple on 2018/7/29.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ViewController.h"
#import "RefinedAbstraction.h"
#import "ConcreteImplementorA.h"
#import "ConcreteImplementorB.h"

#import "HWPhone.h"
#import "XMPhone.h"
#import "PhoneSoftGame.h"
#import "PhoneSoftAddress.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    Phone *phone1 = [HWPhone new];
    phone1.ps = [PhoneSoftAddress new];
    [phone1 run];
    
    Phone *phone2 = [XMPhone new];
    phone2.ps = [ PhoneSoftGame new];
    [phone2 run];
}

- (void)test1{
    Abstraction *ab = [RefinedAbstraction new];
    
    ab.imp = [ConcreteImplementorA new];
    [ab operation];
    
    ab.imp = [ConcreteImplementorB new];
    [ab operation];
}
@end
