//
//  ViewController.m
//  16-迭代器模式
//
//  Created by apple on 2018/7/20.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ViewController.h"
#import "ConcreteAggerate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Aggerate *agg = [[ConcreteAggerate alloc] init];
    [agg setItem:@"0" atIndex:0];
    [agg setItem:@"1" atIndex:1];
    [agg setItem:@"2" atIndex:2];
    [agg setItem:@"3" atIndex:3];
    
    Iterator *it = [agg createIterator];
    id item = [it first];
    NSLog(@"%@", item);
    
    while (!it.isDone) {
        NSLog(@"--%@", [it currentItem]);
        [it next];
    }
}


@end
