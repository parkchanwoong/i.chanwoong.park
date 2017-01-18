//
//  Warrior.h
//  Gamejob
//
//  Created by 박찬웅 on 2017. 1. 17..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Wizard;

@interface Warrior : NSObject //선언

@property NSUInteger health;
@property NSUInteger mana;
@property NSUInteger physicalPower;
@property NSUInteger magicalPower;
@property NSString* weapon;
@property NSString* shield;

- (id)physicalPower:(Wizard *)to;



//- (id)magicalPower:(Wizard *)to;

@end
