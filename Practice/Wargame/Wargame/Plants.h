//
//  Plants.h
//  Wargame
//
//  Created by 박찬웅 on 2017. 1. 18..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameCharacter.h"

@class Zombie;

@interface Plants : GameCharacter


- (id)leafAttack:(Zombie*)boneDefense;

@end
