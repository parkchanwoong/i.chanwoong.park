//
//  Absolute.m
//  Absolute
//
//  Created by 박찬웅 on 2017. 1. 31..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "Absolute.h"

@implementation Absolute

- (void)absoluteNum:(NSInteger)num
{
    if(num>0)
    {
        self.num = num;
    }
    else
    {
        self.num = -num;
    }
    
}



- (NSInteger)absoluteNumber:(NSInteger)number
{
    if(number>0)
    {
        return number;
    }
    else
    {
        return number * -1;
    }
}

@end
