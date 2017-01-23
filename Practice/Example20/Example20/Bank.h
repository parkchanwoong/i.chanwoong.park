//
//  Bank.h
//  Example20
//
//  Created by 박찬웅 on 2017. 1. 20..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Person;
@interface Bank : NSObject

//은행명
@property NSString* bankName;

//은행위치
@property NSString* bankLocation;

//-주소변경
- (void)region:(NSString*) locate;

//-이체메소드
- (void)deposit:(Person *)toPerson fromPerson:(Person *)fromPerson depositWon:(NSUInteger)won;

@end
