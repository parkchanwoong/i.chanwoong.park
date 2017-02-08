//
//  Fibonacci.m
//  Prac0201
//
//  Created by 박찬웅 on 2017. 2. 1..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "Fibonacci.h"

@implementation Fibonacci

+ (void)fibonacci:(NSInteger)num
{
    NSInteger first = 0;
    NSInteger second = 1;
    NSInteger third = 1;
    
    NSLog(@"%lu",first);
    NSLog(@"%lu",second);
 
    for (NSInteger i = 0; i<num; i++)
    {
        
         NSLog(@"%lu",third);
        
        first = second;
        
        second = third;
        
     
        
        third = first + second;
       
        
       
        
    }
}

@end
