//
//  ConcreteMediator.h
//  21-中介者模式
//
//  Created by apple on 2018/7/29.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "Mediator.h"
#import "ConcreteColleague1.h"
#import "ConcreteColleague2.h"

@interface ConcreteMediator : Mediator
@property (nonatomic, strong) ConcreteColleague1 *c1;
@property (nonatomic, strong) ConcreteColleague2 *c2;

@end
