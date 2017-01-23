//
//  Man.h
//  Example20
//
//  Created by 박찬웅 on 2017. 1. 20..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Man : Person

// 카드만들기
- (void)makeCard:(Bank *)bank;

//입금(재정의)
- (void)depositOfWon:(NSUInteger)Won toBank:(Bank *)bank;

@end
