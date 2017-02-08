//
//  Factorial.m
//  Prac0201
//
//  Created by 박찬웅 on 2017. 2. 1..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "Factorial.h"

@implementation Factorial

+ (void)factorial:(NSInteger)fact
{
    NSInteger result = 1;
    for(NSInteger i = 1; i<=fact; i++)
    {
        result *= i;
    }
    NSLog(@"for : %lu",result);
}


+ (void)factorialWhile:(NSInteger)fact
{
    NSUInteger i = 1;
    NSInteger result = 1;
    while(i <= fact)
    {
        result *= i;
        i++;
    }
    NSLog(@"While : %lu",result);
}


@end

    
    
    
