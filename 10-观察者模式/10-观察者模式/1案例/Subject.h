//
//  Subject.h
//  10-观察者模式
//
//  Created by apple on 2018/7/12.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observer.h"

@protocol Subject <NSObject>
- (void)Attach:(id<Observer>)observer;
- (void)Detach:(id<Observer>)observer;
- (void)Notify;
@end
