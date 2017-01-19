//
//  Person.h
//  Gamejob
//
//  Created by 박찬웅 on 2017. 1. 17..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject //선언

@property NSString *name;
@property NSString *eyeColor;
@property NSString *hairColor;
@property char gender;
@property NSUInteger height;
@property NSUInteger weight;

- (id)attack;
- (id)defense;
- (id)magic;
- (id)move;
- (id)drinking;
- (id)sleep;
- (id)death;


@end
