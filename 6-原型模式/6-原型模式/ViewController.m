//
//  ViewController.m
//  6-原型模式
//
//  Created by apple on 2018/7/11.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ViewController.h"
#import "ConcreteProtoType.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ConcreteProtoType *t1 = [ConcreteProtoType new];
    t1.name = @"11";
    t1.age = 22;
    
    ConcreteProtoType *t2 = [t1 Clone];
    NSLog(@"t1:%@--t2:%@", t1.name, t2.name);
    
    t2.name = @"22";
    NSLog(@"t1:%@--t2:%@", t1.name, t2.name);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
