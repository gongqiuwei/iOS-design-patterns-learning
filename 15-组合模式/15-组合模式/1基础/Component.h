//
//  Component.h
//  15-组合模式
//
//  Created by apple on 2018/7/19.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Component : NSObject
- (instancetype)initWithName:(NSString *)name;
- (void)AddComponent:(Component *)component;
- (void)RemoveComponent:(Component *)component;
- (void)display:(int)depth;
@end
