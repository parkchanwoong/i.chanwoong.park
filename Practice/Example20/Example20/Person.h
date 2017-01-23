//
//  Person.h
//  Example20
//
//  Created by 박찬웅 on 2017. 1. 20..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bank.h"

@class Bank;
@interface Person : NSObject

//이름
@property NSString *name;
//자산
@property NSUInteger asset;


//-입금
- (void)depositOfWon:(NSUInteger)Won toBank:(Bank *)bank;

//-조회
- (void)lookUp:(Bank *)bank;

@end
