//
//  RealSubject.h
//  4-代理模式
//
//  Created by apple on 2018/7/9.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Subject.h"
#import "ShchoolGirl.h"

@interface RealSubject : NSObject<Subject>
@property (nonatomic, strong) ShchoolGirl *mm;
@end
