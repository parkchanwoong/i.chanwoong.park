//
//  StringPlus.m
//  Prac0201
//
//  Created by 박찬웅 on 2017. 2. 1..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "StringPlus.h"

@implementation StringPlus

+ (NSString *)stringPlus
{
    NSString *resultString = @"합치자 ";
    NSUInteger count = 10;
    NSString *temp = [NSString stringWithFormat:@"%lu |",count];
    resultString = [resultString stringByAppendingString:temp];
  
    return resultString;
}

@end


//NSString *temp =[NSString stringWithFormat:@"%lu ",count];   //stringWithFormat 숫자를 문자로
//resultString = [resultString stringByAppendingString:temp];
