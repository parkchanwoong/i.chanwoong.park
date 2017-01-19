//
//  Zombie.m
//  Wargame
//
//  Created by 박찬웅 on 2017. 1. 18..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "Zombie.h"
#import "Plants.h"

@implementation Zombie


- (id)attack:(Plants*)defense{
    
    NSUInteger damage = self.boneAttack - defense.leafDefense;
    
    NSUInteger pResultHp = defense.pHealth - damage;
    
    defense.pHealth = pResultHp;

    NSLog(@"plant의 체력 : %lu",(unsigned long)defense.pHealth);

    
    
    
    
    return nil;
    
    
}

@end
