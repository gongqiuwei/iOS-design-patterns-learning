//
//  ViewController.m
//  14-备忘录模式
//
//  Created by apple on 2018/7/19.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ViewController.h"
#import "Originator.h"
#import "Memento.h"
#import "Caretaker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self test1];
}

// 基本测试
- (void)test1{
    // 初始状态
    Originator *o = [Originator new];
    o.state = @"on";
    [o show];
    
    // 保存状态
    Caretaker *c = [Caretaker new];
    c.memento = [o createMemento];
    
    // 修改状态
    o.state = @"off";
    [o show];
    
    // 恢复状态
    [o setMemento:c.memento];
    [o show];
}
@end
