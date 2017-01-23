//
//  Zombie.h
//  Wargame
//
//  Created by 박찬웅 on 2017. 1. 18..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameCharacter.h"

@class Plants;

@interface Zombie : GameCharacter


- (id)attack:(Plants*)leafDefense;


@end
