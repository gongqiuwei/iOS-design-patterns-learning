//
//  Factory.h
//  11-抽象工厂模式
//
//  Created by apple on 2018/7/16.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProductA.h"
#import "ProductB.h"

@interface Factory : NSObject
+ (ProductA *)createProductA;
+ (ProductB *)createProductB;
@end
