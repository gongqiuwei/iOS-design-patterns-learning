//
//  ViewController.m
//  21-中介者模式
//
//  Created by apple on 2018/7/29.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ViewController.h"
#import "ConcreteMediator.h"
#import "ConcreteColleague1.h"
#import "ConcreteColleague2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    ConcreteColleague1 *c1 = [ConcreteColleague1 new];
    ConcreteColleague2 *c2 = [ConcreteColleague2 new];
    ConcreteMediator *m = [ConcreteMediator new];
    
    m.c1 = c1;
    m.c2 = c2;
    
    c1.m = m;
    c2.m = m;
    
    [c1 send:@"你好吗"];
    [c2 send:@"我很好"];
}


@end
