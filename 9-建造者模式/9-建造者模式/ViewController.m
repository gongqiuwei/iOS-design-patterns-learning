//
//  ViewController.m
//  9-建造者模式
//
//  Created by apple on 2018/7/12.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ViewController.h"
#import "Director.h"
#import "ThinPersonBuilder.h"
#import "FatPersonBuilder.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建瘦子
    ThinPersonBuilder *thinbuilder = [ThinPersonBuilder new];
    Director *thinDirector = [[Director alloc] initWithBuilder:thinbuilder];
    [thinDirector createPerson];
    
    // 创建胖子
    FatPersonBuilder *fatBuilder = [FatPersonBuilder new];
    Director *fatDirector = [[Director alloc] initWithBuilder:fatBuilder];
    [fatDirector createPerson];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
