//
//  Month.m
//  Month
//
//  Created by 박찬웅 on 2017. 1. 31..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "Month.h"

@implementation Month


- (NSInteger)lastDayOfMonth:(NSInteger)input
{
    switch(input)
    {
        case 1:
        case 3:
        case 5:
        case 7:
        case 8:
        case 10:
        case 12:
            NSLog(@"31일 입니다");
            break;
        case 2:
            NSLog(@"29일 입니다");
            break;
        default:
            NSLog(@"30일 입니다");
    }
    return 0;
}

@end
