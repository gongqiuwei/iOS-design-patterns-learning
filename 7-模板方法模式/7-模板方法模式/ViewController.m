//
//  ViewController.m
//  7-模板方法模式
//
//  Created by apple on 2018/7/11.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ViewController.h"
#import "ConcreteTempA.h"
#import "ConcreteTempB.h"

#import "TestPaperA.h"
#import "TestPaperB.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self test2];
}

- (void)test2{
    
    TestPaperA *pa = [TestPaperA new];
    [pa question1];
    [pa question2];
    
    NSLog(@"===============");
    TestPaperB *pb = [TestPaperB new];
    [pb question1];
    [pb question2];
    
}

- (void)test1
{
    ConcreteTempA *a = [ConcreteTempA new];
    [a TemplateMethod];
    
    ConcreteTempB *b = [ConcreteTempB new];
    [b TemplateMethod];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
