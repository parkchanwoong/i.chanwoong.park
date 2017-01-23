//
//  Man.m
//  Example20
//
//  Created by 박찬웅 on 2017. 1. 20..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "Man.h"
#import "Bank.h"
@implementation Man


//카드만들기
//“~~가 ~~은행에서 카드를 만들었습니다.”.  self.name bank.bankName
- (void)makeCard:(Bank *)bank
{
    NSLog(@"%@가 %@은행에서 카드를 만들었습니다.",self.name,bank.bankName);
}

//입금(재정의)
//~~가 ~~은행에 ~~를 입금하였습니다.
//~~가 ~~은행에서 자신의 계좌를 조회해본 결과, 총 자산은 ~~원 입니다
- (void)depositOfWon:(NSUInteger)won toBank:(Bank *)bank
{
    [super depositOfWon:won toBank:bank];
    [self lookUp:bank];
}


@end
