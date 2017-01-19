//
//  Plants.h
//  Wargame
//
//  Created by 박찬웅 on 2017. 1. 18..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Zombie;

@interface Plants : NSObject


@property NSUInteger leafAttack; //식물의 공격력
@property NSUInteger leafDefense; //식물의 방어력
@property NSUInteger pHealth; //식물의 체력

- (id)leafAttack:(Zombie*)boneDefense;

@end
