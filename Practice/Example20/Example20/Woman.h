//
//  Woman.h
//  Example20
//
//  Created by 박찬웅 on 2017. 1. 20..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@interface Woman : Person

//통장정리
//~~가 ~~은행에서 통장정리를 하였습니다.
- (void)clear:(Bank *)bank;

@end
