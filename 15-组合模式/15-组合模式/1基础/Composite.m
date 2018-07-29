//
//  Composite.m
//  15-组合模式
//
//  Created by apple on 2018/7/19.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "Composite.h"

@interface Composite()
@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSMutableArray<Component *> *children;
@end

@implementation Composite
- (instancetype)initWithName:(NSString *)name
{
    if (self = [super init]) {
        self.name = name;
        self.children = [NSMutableArray array];
    }
    return self;
}
- (void)AddComponent:(Component *)component
{
    [self.children addObject:component];
}
- (void)RemoveComponent:(Component *)component
{
    [self.children removeObject:component];
}
- (void)display:(int)depth
{
    // 输出自己
    NSMutableString *str = [NSMutableString string];
    for (int i = 0; i < depth; i++) {
        [str appendString:@"-"];
    }
    NSLog(@"%@%@", str, self.name);
    
    // 遍历子
    for (Component *c in self.children) {
        [c display:depth + 2];
    }
}
@end
