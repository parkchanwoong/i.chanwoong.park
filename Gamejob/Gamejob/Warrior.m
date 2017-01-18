//
//  Warrior.m
//  Gamejob
//
//  Created by 박찬웅 on 2017. 1. 17..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "Warrior.h"
#import "Wizard.h"

@implementation Warrior //구현

- (id)physicalPower:(Wizard *)to
{
    
    NSInteger power = self.physicalPower - to.health;
    NSInteger baseHP = to.health;
    
    
    
    return nil;

}

@end
