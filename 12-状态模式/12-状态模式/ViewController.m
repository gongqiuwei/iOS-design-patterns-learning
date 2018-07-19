//
//  ViewController.m
//  12-状态模式
//
//  Created by apple on 2018/7/16.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ViewController.h"
#import "Context.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Context *c = [Context new];
    [c currentStateLog];
    
    [c request];
    [c currentStateLog];
    
    [c request];
    [c currentStateLog];
    
    [c request];
    [c currentStateLog];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
