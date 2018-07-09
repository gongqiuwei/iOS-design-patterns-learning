//
//  Person.h
//  3-装饰模式
//
//  Created by apple on 2018/7/8.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (nonatomic, copy) NSString *name;

- (void)WearTShirts;
- (void)WearBigTrouser;
- (void)WearSneakers;
- (void)WearSuit;
- (void)WearTie;
- (void)WearLeatherShoes;
- (void)show;
@end
