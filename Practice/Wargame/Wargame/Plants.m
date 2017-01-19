//
//  Plants.m
//  Wargame
//
//  Created by 박찬웅 on 2017. 1. 18..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "Plants.h"
#import "Zombie.h"
@implementation Plants


- (id)leafAttack:(Zombie*)boneDefense{
    
    
    NSUInteger damage = self.leafAttack - boneDefense.boneDefense;
    
    NSUInteger zResultHp = boneDefense.zHealth - damage;
    
    boneDefense.zHealth = zResultHp;
    
    
    NSLog(@"zombie의 체력 : %@",boneDefense.zHealth);
    
    return nil;
}

@end
