//
//  GQWOperation.h
//  01-简单工厂模式
//
//  Created by apple on 2018/7/5.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GQWOperation : NSObject
@property (nonatomic, assign) double numA;
@property (nonatomic, assign) double numB;

- (double)getResult;
@end
