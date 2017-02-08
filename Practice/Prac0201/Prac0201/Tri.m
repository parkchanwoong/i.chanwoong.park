//
//  Tri.m
//  Prac0201
//
//  Created by 박찬웅 on 2017. 2. 1..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "Tri.h"

@implementation Tri

+ (void)triang:(NSUInteger)num
{
    NSUInteger i;
    NSUInteger sum = 0;
    for(i = 1 ; i<=num; i++)
    {
        sum += i;
    }
    NSLog(@"for : %lu",sum);
}


+ (void)triangWhile:(NSUInteger)num
{
    NSUInteger sum = 0;
    NSUInteger index = 0;
    while(index <= num)
    {
        sum += index;
        index++;
    }
    NSLog(@"While : %lu",sum);
}

@end
