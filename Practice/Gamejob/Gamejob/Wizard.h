//
//  Wizard.h
//  Gamejob
//
//  Created by 박찬웅 on 2017. 1. 17..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Warrior;

@interface Wizard : NSObject

@property NSUInteger health;
@property NSUInteger mana;
@property NSUInteger physicalAttack;
@property NSUInteger magicalAttack;
@property NSString* weapon;

- (id)physicalPower:(Warrior *)to;





//- (id)magicalPower:(Warrior *)to;


@end
