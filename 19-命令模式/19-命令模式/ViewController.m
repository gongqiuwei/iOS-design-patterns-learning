//
//  ViewController.m
//  19-命令模式
//
//  Created by apple on 2018/7/29.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ViewController.h"
#import "Invoker.h"
#import "Receiver.h"
#import "ConcreteCommand.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    Receiver *receiver = [Receiver new];
    ConcreteCommand *command = [ConcreteCommand new];
    command.receiver = receiver;
    Invoker *invoker = [Invoker new];
    invoker.command = command;
    
    [invoker run];
}


@end
