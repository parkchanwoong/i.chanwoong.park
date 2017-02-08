//
//  Rounds.m
//  Absolute
//
//  Created by 박찬웅 on 2017. 1. 31..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "Rounds.h"

@implementation Rounds

+ (CGFloat)roundNum:(CGFloat)num
{
    num = (NSInteger)((num+0.005)*100);
    num = num / 100;
    return num;
}



@end
