//
//  Director.h
//  9-建造者模式
//
//  Created by apple on 2018/7/12.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PersonBuilder.h"

@interface Director : NSObject
- (instancetype)initWithBuilder:(id<PersonBuilder>)builder;
- (void)createPerson;
@end
