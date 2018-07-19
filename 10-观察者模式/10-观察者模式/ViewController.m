//
//  ViewController.m
//  10-观察者模式
//
//  Created by apple on 2018/7/12.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ViewController.h"
#import "StockObserver.h"
#import "NBAObserver.h"
#import "Secretary.h"
#import "Boss.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 监听者
    StockObserver *so = [StockObserver new];
    
    NBAObserver *no = [NBAObserver new];
    
    // 小秘书通知
    Secretary *s = [Secretary new];
    [s Attach:so];
    [s Attach:no];
    
    [s Detach:so];
    
    [s Notify];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
