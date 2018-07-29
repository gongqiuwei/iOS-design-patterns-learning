//
//  ViewController.m
//  15-组合模式
//
//  Created by apple on 2018/7/19.
//  Copyright © 2018年 gongqiuwei. All rights reserved.
//

#import "ViewController.h"
#import "Component.h"
#import "Composite.h"
#import "Leaf.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    Composite *root = [[Composite alloc] initWithName:@"root"];
    [root AddComponent:[[Leaf alloc] initWithName:@"LeafA"]];
    
    
    Composite *comp = [[Composite alloc] initWithName:@"Comp X"];
    [comp AddComponent:[[Leaf alloc] initWithName:@"LeafXA"]];
    [comp AddComponent:[[Leaf alloc] initWithName:@"LeafXB"]];
    
    [root AddComponent:comp];
    
    [root AddComponent:[[Leaf alloc] initWithName:@"LeafB"]];
    
    Composite *comp1 = [[Composite alloc] initWithName:@"Comp Y"];
    [comp1 AddComponent:[[Leaf alloc] initWithName:@"LeafYA"]];
    [comp1 AddComponent:[[Leaf alloc] initWithName:@"LeafYB"]];
    
    [comp AddComponent:comp1];
    
    [root display:1];
}





@end
