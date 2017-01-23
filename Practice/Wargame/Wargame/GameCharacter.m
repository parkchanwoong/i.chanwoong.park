//
//  GameCharacter.m
//  Wargame
//
//  Created by 박찬웅 on 2017. 1. 19..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "GameCharacter.h"

@interface GameCharacter ()


@property NSString*  zName;    //좀비의 이름
@property NSUInteger boneAttack; //좀비의 공격력
@property NSUInteger boneDefense; //좀비의 방어력
@property NSUInteger zHealth; //좀비의 체력



@property NSString*  pName;  //식물의 이름
@property NSUInteger leafAttack; //식물의 공격력
@property NSUInteger leafDefense; //식물의 방어력
@property NSUInteger pHealth; //식물의 체력


@end




@implementation GameCharacter

- (void)setDefault:(NSInteger)zHealth atk:(NSInteger)boneAttack
{
    self.zHealth = zHealth;
    self.boneAttack = boneAttack;
}

- (void)psetDefault:(NSInteger)pHealth patk:(NSInteger)leafAttack
{
    self.pHealth = pHealth;
    self.leafAttack = leafAttack;
}











- (void)jumpTo:(GameCharacter *)character
{
    NSLog(@"%@에게로 점프 합니다.",character.pName);
}


- (void)attackTo:(GameCharacter *)charcter
{
    NSLog(@"%@를 공격합니다.",charcter.zName);
}

@end
