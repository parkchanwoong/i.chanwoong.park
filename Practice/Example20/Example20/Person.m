//
//  Person.m
//  Example20
//
//  Created by 박찬웅 on 2017. 1. 20..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "Person.h"

@implementation Person




//-입금
//   "self.name가 (은행이름) 은행에 (금액)를 입금하였습니다."
- (void)depositOfWon:(NSUInteger)won toBank:(Bank *)bank
{
    self.asset = self.asset + won;
    NSLog(@"%@가 %@은행에 %lu를 입금하였습니다.",self.name,bank.bankName,won);
}


//-조회
//self.name 가 (Bank)은행에서 자신의 계좌를 조회해 본 결과, 총 자산은 self.asset원 입니다.
- (void)lookUp:(Bank *)bank
{
    NSLog(@"%@가 %@은행에서 자신의 계좌를 조회해 본 결과, 총 자산은 %lu원 입니다.",self.name,bank.bankName,self.asset);
}


@end
