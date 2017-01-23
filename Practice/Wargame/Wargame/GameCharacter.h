//
//  GameCharacter.h
//  Wargame
//
//  Created by 박찬웅 on 2017. 1. 19..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameCharacter : NSObject



- (void)jumpTo:(GameCharacter *)character;

- (void)attackTo:(GameCharacter *)charcter;


@end
