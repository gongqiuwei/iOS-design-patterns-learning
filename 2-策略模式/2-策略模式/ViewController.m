//
//  ViewController.m
//  2-策略模式
//
//  Created by apple on 2018/7/8.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ViewController.h"
//#import "GQWCashFactory.h"
#import "GQWStratetyContext.h"

//typedef NS_ENUM(NSInteger, CashType) {
//    CashTypeNormal = 0,     // 正常
//    CashTypeRebata,         // 打折
//    CashTypeReturn          // 满减
//};

@interface ViewController ()
@property (nonatomic, strong) NSDictionary *cashType;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _cashType = @{
                  @"正常收费":@(CashTypeNormal),
                  @"打8折":@(CashTypeRebeta),
                  @"满300返100":@(CashTypeReturn)
                };
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    // client 条件
    NSString *price = @"1000";
    NSString *count = @"1";
//    NSString *type = @"打8折";
    
    // 调用
//    NSString *result = [self getTotalWithPrice:price count:count cashType:type];
//    NSLog(@"%@", result);
    
    // 重构1：简单工厂
    // 计价类增加，对应不同计价方式
//    id<CashSuper> cash = [GQWCashFactory createCashAccept:[self.cashType[type] integerValue]];
//    double money = price.doubleValue * count.intValue;
//    double total = [cash acceptCash:money];
//    NSString *result = [NSString stringWithFormat:@"单价：%@， 数量：%@， 总价：%f，计价方式：%@", price, count, total, type];
//    NSLog(@"%@", result);
    
    /*
     增加计价方式--> factory更改
     而且商城是经常需要更改或者增加计价方式的，简单工厂面对这种更改是创建整体对象类
     */
    // 重构2：策略模式封装case分支的算法，简单工厂集成到策略context类中
    NSString *type = @"满300返100";
    double money = price.doubleValue * count.intValue;
    GQWStratetyContext *context = [[GQWStratetyContext alloc] initWithCashType:[self.cashType[type] integerValue]];
    double total = [context getResult:money];
    NSString *result = [NSString stringWithFormat:@"单价：%@， 数量：%@， 总价：%f，计价方式：%@", price, count, total, type];
    NSLog(@"%@", result);
}

- (NSString *)getTotalWithPrice:(NSString *)price count:(NSString *)count cashType:(NSString *)type
{
    NSString *result = nil;
    double p = [price doubleValue];
    int c = [count intValue];
    CashType cashType = [self.cashType[type] integerValue];
    double total = 0;
    
    switch (cashType) {
        case CashTypeNormal:
            total = p * c;
            break;
        case CashTypeRebeta:
            total = p * c * 0.8;
            break;
        default:
            break;
    }
    
    result = [NSString stringWithFormat:@"单价：%@， 数量：%@， 总价：%f，计价方式：%@", price, count, total, type];
    
    return result;
}

@end
