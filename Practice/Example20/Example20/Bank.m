//
//  Bank.m
//  Example20
//
//  Created by 박찬웅 on 2017. 1. 20..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "Bank.h"
#import "Person.h"
@implementation Bank

//-주소변경
//~~은행이 ~~에서 ~~로 주소를 변경하였습니다. self.bankName, self.bankLocation, locate
- (void)region:(NSString*) locate
{
    NSLog(@"%@은행이 %@에서 %@로 주소를 변경하였습니다.", self.bankName,self.bankLocation,locate);
    self.bankLocation = locate;
}

//-이체메소드
//~~가 ~~에게 ~~를 이체하였습니다.  Person.name Person.name won
- (void)deposit:(Person *)toPerson fromPerson:(Person *)fromPerson depositWon:(NSUInteger)won;
{
    fromPerson.asset = fromPerson.asset - won;
    toPerson.asset = toPerson.asset + won;
    NSLog(@"%@가 %@에게 %lu를 이체하였습니다.",toPerson.name,fromPerson.name,won);
}

@end
