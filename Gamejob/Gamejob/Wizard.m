//
//  Wizard.m
//  Gamejob
//
//  Created by 박찬웅 on 2017. 1. 17..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "Wizard.h"
#import "Warrior.h"

@implementation Wizard

- (id)physicalPower:(Warrior *)to
{
    
    NSInteger power = self.physicalPower - to.health;
    NSInteger baseHP = to.health;
    
    return nil;
    
}



@end
