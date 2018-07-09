//
//  ViewController.m
//  3-装饰模式
//
//  Created by apple on 2018/7/8.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

#import "People.h"
#import "TShirt.h"
#import "BigTrouser.h"
#import "Sneakers.h"
#import "Suit.h"
#import "Tie.h"
#import "LeatherShoes.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    // 穿衣服装饰
//    Person *xc = [Person new];
//    xc.name = @"小蔡";
//
//    [xc WearTShirts];
//    [xc WearBigTrouser];
//    [xc WearSneakers];
//    [xc show];
    
    // 装饰模式重构
    // 角色1：component--需要装饰的内容，抽象接口类
    // component下的operation接口定义了行为，进行装饰的时候需要调用operation
    // 角色2：concreteComponent具体内容，被装饰的类
    //
    
    People *xc = [People new];
    xc.name = @"小蔡";
    People *dn = [People new];
    dn.name = @"大鸟";
    
    TShirt *ts1 = [TShirt new];
    BigTrouser *bt1 = [BigTrouser new];
    Sneakers *sn1 = [Sneakers new];
    Suit *s1 = [Suit new];
    Tie *t1 = [Tie new];
    LeatherShoes *ls1 = [LeatherShoes new];
    
    ts1.component = xc;
    bt1.component = ts1;
    sn1.component = bt1;
    [sn1 show];
    
    
    s1.component = dn;
    t1.component = s1;
    ls1.component = t1;
    [ls1 show];
}


@end
