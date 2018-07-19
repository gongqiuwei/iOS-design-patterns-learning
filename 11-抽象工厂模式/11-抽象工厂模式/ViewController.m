//
//  ViewController.m
//  11-抽象工厂模式
//
//  Created by apple on 2018/7/15.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ViewController.h"

#import "ConcreteFactory1.h"
#import "ConcreteFactory2.h"

#import "SqlFactory.h"
#import "AccessFactory.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self test4];
}

// 反射机制：类名/方法名 <----转换为---> NSString
// 利用反射机制，去除if-else或者switch
- (void)test4{
    // Sql、Access
    NSString *dbName = @"Access";
    NSString *className = [NSString stringWithFormat:@"%@Factory", dbName];
    Class class = NSClassFromString(className);
    ServerFactory *fa = [class new];
    
    User *user = [fa createUser];
    [user insertUser];
    [user getUser];
    
    Department *d = [fa createDepartment];
    [d insertDepartment];
    [d getDepartment];
}

// 简单工厂+抽象工厂
// 问题1：如果增加一个project表，需要增加三个类：Project，AccessProject，SqlProject
// 需要改动三个类：ServerFactory，SqlFactory，AccessFactory
// 为此，使用简单工厂来创建。。
// 问题2：改动SqlFactory->AccessFactory,每一处地方都要改动
- (void)test3{
    // 只需要改动dbname即可切换。。
    NSString *dbName = @"sql";
    
    ServerFactory *fa = nil;
    if ([dbName isEqualToString:@"sql"]) {
        fa = [SqlFactory new];
    } else if ([dbName isEqualToString:@"access"]) {
        fa = [AccessFactory new];
    }
    
    User *user = [fa createUser];
    [user insertUser];
    [user getUser];
    
    Department *d = [fa createDepartment];
    [d insertDepartment];
    [d getDepartment];
    
}

- (void)test2{
    
    // 对sqluser的操作
    ServerFactory *factory = [SqlFactory new];
    User *user = [factory createUser];
    [user insertUser];
    [user getUser];
    
    // 如果换成对accessuser的操作，只需要换工厂 SqlFactory->AccessFactory
    
    // 对accessDepartment的操作
    ServerFactory *fa2 = [AccessFactory new];
    Department *depart = [fa2 createDepartment];
    [depart insertDepartment];
    [depart getDepartment];
    
    //ServerFactory创建的时候切换的时候就可以实现不同的访问了。。
}

- (void)test1{
    // factory1
    ProductA *pa1 = [ConcreteFactory1 createProductA];
    [pa1 productLog];
    
    ProductB *pb1 = [ConcreteFactory1 createProductB];
    [pb1 productLog];
    
    // 切换具体工厂，切换制造方法，就能创建不同产品
    ProductA *pa2 = [ConcreteFactory2 createProductA];
    [pa2 productLog];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
