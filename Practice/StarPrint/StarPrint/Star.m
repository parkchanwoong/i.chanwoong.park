//
//  Star.m
//  StarPrint
//
//  Created by 박찬웅 on 2017. 2. 2..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "Star.h"

@implementation Star

+ (void)star:(NSUInteger)num
{
    for(NSUInteger i=0; i<num; i++)
    {
        for(NSUInteger j=0; j<i+1; j++)
        {
            printf("*");
        }
            printf("\n");
    }
    
}

+ (void)starr:(NSInteger)number
{
    for(NSUInteger i=0; i<number; i++)
    {
        for(NSUInteger j=0; j<number-i; j++)
        {
            printf("*");
        }
        printf("\n");
    }
}

+ (void)range:(NSInteger)num
{
    for(NSUInteger i=10; i>num; i--)
    {
       
        NSLog(@"%lu",i);
    }
}

+ (void)rangeWhile:(NSUInteger)num
{
    NSUInteger i = 0;
    while (i<num) {
        NSLog(@"%lu",i);
        i++;
    }
}

@end
