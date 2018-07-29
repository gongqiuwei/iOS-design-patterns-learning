//
//  ViewController.m
//  20-职责链模式
//
//  Created by apple on 2018/7/29.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ViewController.h"
#import "ConcreteHandler1.h"
#import "ConcreteHandler2.h"
#import "ConcreteHandler3.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    ConcreteHandler1 *handler1 = [ConcreteHandler1 new];
    ConcreteHandler2 *handler2 = [ConcreteHandler2 new];
    ConcreteHandler3 *handler3 = [ConcreteHandler3 new];
    handler1.successor = handler2;
    handler2.successor = handler3;
    
    [handler1 handlerRequest:1];
    [handler1 handlerRequest:10];
    [handler1 handlerRequest:100];
}


@end
