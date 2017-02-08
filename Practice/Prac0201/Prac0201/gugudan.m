//
//  Gugudan.m
//  Prac0201
//
//  Created by 박찬웅 on 2017. 2. 1..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "Gugudan.h"

@implementation Gugudan

+ (void)gugudan:(NSUInteger)dan
{
    for(NSUInteger i = 1;  i <10; i++)
    {
        NSLog(@"%lu * %lu = %lu",dan,i,dan*i);
    }
}

+ (void)gugudanWhile:(NSUInteger)dan
{
    NSUInteger i = 1;
    while (i < 10)
    {
        NSLog(@"%lu * %lu = %lu",dan,i,dan*i);
        i++;
    }
}
@end
