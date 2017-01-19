//
//  Person.h
//  MySecondApp
//
//  Created by 박찬웅 on 2017. 1. 17..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property id name;
@property id gender;
@property id old;
@property id job;
@property id birthday;
@property id number; //전화번호
@property id height;
@property id weight;
@property id hair;
@property id skinColor;
@property id character; //성격

- (id)talk;
- (id)walk;
- (id)think;
- (id)work;
- (id)run;
- (id)eat;
- (id)sleep;
- (id)stop;
- (id)drinking;



@end
