//
//  Zombie.h
//  Wargame
//
//  Created by 박찬웅 on 2017. 1. 18..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Plants;

@interface Zombie : NSObject

@property NSUInteger boneAttack; //좀비의 공격력
@property NSUInteger boneDefense; //좀비의 방어력
@property NSUInteger zHealth; //좀비의 체력

- (id)attack:(Plants*)leafDefense;




@end
