//
//  Leaf.m
//  15-组合模式
//
//  Created by apple on 2018/7/19.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "Leaf.h"

@interface Leaf()
@property (nonatomic, copy) NSString *name;
@end

@implementation Leaf
- (instancetype)initWithName:(NSString *)name
{
    if (self = [super init]) {
        self.name = name;
    }
    return self;
}
- (void)AddComponent:(Component *)component
{
    NSLog(@"Leaf 无法添加");
}
- (void)RemoveComponent:(Component *)component
{
    NSLog(@"Leaf 无法删除");
}
- (void)display:(int)depth
{
    NSMutableString *str = [NSMutableString string];
    for (int i = 0; i < depth; i++) {
        [str appendString:@"-"];
    }
    
    NSLog(@"%@%@", str, self.name);
}
@end
