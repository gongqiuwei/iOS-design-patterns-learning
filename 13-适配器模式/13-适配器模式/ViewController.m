//
//  ViewController.m
//  13-适配器模式
//
//  Created by apple on 2018/7/19.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ViewController.h"
#import "Client.h"
#import "Adapter.h"
#import "Adaptee.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self test1];
}

/**
 Client, Adaptee都存在，但是2者之间的接口不同，需要中转者adapter, adapter需要遵守target协议(这里使用的是虚基类)
 
 tableview的DataSource协议来理解，tableview是client，vc是adapter, vc处理的数据model是adaptee
 */
- (void)test1
{
    Adaptee *ad = [Adaptee new];
    Adapter *target = [[Adapter alloc] initWitAdaptee:ad];
    Client *c = [[Client alloc] initWitTarget:target];
    
    [c doSomething];
}
@end
