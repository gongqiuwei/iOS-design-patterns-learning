//
//  ViewController.m
//  01-简单工厂模式
//
//  Created by apple on 2018/7/5.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ViewController.h"
#import "GQWCalculator.h"

#import "GQWCalcuteFactory.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *numberA;
@property (weak, nonatomic) IBOutlet UITextField *numberB;
@property (weak, nonatomic) IBOutlet UITextField *op;
@property (weak, nonatomic) IBOutlet UITextField *result;

@end

@implementation ViewController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    // 计算器demo
    // [self Calculator1];
    
    /*
     重构1：将业务封装到类中去。业务与界面分离，面向对象 --> 封装特性
     */
//    self.result.text = [GQWCalculator GetResultWith:self.numberA.text numberB:self.numberB.text andOperation:self.op.text];
    
    /*
     重构2：函数的分支算法暴露在外，可能增加分支的时候会被修改掉算法
     在GetResultWith:numberB:andOperation:函数内部处理
     
     面向对象：继承&多态
     */
    
    /*
     重构3：对重构2中的分支代码进行重构，可以不再使用GQWCalculator工具类了，而是利用工厂类直接在客户端进行GQWOperation的创建，并实现计算
     
     优点：
     客户端不关心产品创建过程，只关心使用产品
     
     缺点：
     拓展新的产品，需要增减类，会造成过多，并且没加一次，分支代码要修改，违反开放-封闭原则(原有代码尽量不动，知识新增类和新增代码)
     
     应用：
     工厂类负责创建的对象比较少；
     客户只知道传入工厂类的参数，对于如何创建对象（逻辑）不关心；
     由于简单工厂很容易违反开放-封闭原则，因此一般只在很简单的情况下应用。
     */
    GQWOperation *op = [GQWCalcuteFactory createOperationWithOpName:self.op.text];
    op.numA = self.numberA.text.doubleValue;
    op.numB = self.numberB.text.doubleValue;
    double result = op.getResult;
    self.result.text = [NSString stringWithFormat:@"%f", result];
}

// 初始demo
- (void)Calculator1
{
    NSString *numA = self.numberA.text;
    NSString *numB = self.numberB.text;
    NSString *op = self.op.text;
    
    double result = 0.0;
    // 计算
    if ([op isEqualToString:@"+"]) {
        result = numA.doubleValue + numB.doubleValue;
    }
    else if ([op isEqualToString:@"-"]) {
        result = numA.doubleValue - numB.doubleValue;
    }
    else if ([op isEqualToString:@"*"]) {
        result = numA.doubleValue * numB.doubleValue;
    }
    else if ([op isEqualToString:@"/"]) {
        result = numA.doubleValue / numB.doubleValue;
    }
    
    self.result.text = [NSString stringWithFormat:@"%f", result];
}

@end










