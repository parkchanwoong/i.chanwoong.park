//
//  Calculator.m
//  Absolute
//
//  Created by 박찬웅 on 2017. 1. 31..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator



- (NSInteger)calcuOP:(NSString *)calcuOP
                num1:(NSInteger)num1
                num2:(NSInteger)num2
{
    if([calcuOP isEqualToString:@"+"])
    {
        return self.resultValue = num1 + num2;
    }
    else if([calcuOP isEqualToString:@"-"])
    {
        self.resultValue = num1 - num2;
        
        if(self.resultValue>0)
        {
            return self.resultValue;
        }
        else
        {
            return self.resultValue * -1;
        }
    }
    else
        return 0;
}

@end
