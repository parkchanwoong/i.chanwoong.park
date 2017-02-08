//
//  Gogodan.m
//  Absolute
//
//  Created by 박찬웅 on 2017. 2. 1..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "Gogodan.h"

@implementation Gogodan

//while 구구단
+ (void)gogodan:(NSInteger)dan
{
    NSInteger count = 1;
    while (count < 10)
    {
        NSLog(@"%lu * %lu = %lu",dan,count,dan*count);
        count++;
    }
}

//3의 배수찾기
+ (NSString *)findMultipleNum:(NSUInteger)num
               maxLange:(NSUInteger)maxLange
{
    NSString *resultString = @"";
    
    NSInteger count = 1;
    while(count <= maxLange)
    {
        
        if(count % num == 0)
        {
            NSString *temp =[NSString stringWithFormat:@"%lu ",count];   //stringWithFormat 숫자를 문자로
            resultString = [resultString stringByAppendingString:temp];  //stringByAppendingString 스트링 더하기
            
//        NSLog(@"%lu",count);
        }
        count++;
        
            
    }
    return resultString;
}


//for문 구구단
+ (void)gugudan:(NSInteger)dan
{
    for (NSInteger i = 1; i<10; i++) {
        NSLog(@"%lu * %lu = %lu",dan,i,dan*i);
    }
}




+ (void)gugudan;
{
    for(NSInteger i = 2; i<10; i++)
    {
        for(NSInteger j = 1; j<10; j++)
        {
        NSLog(@"%lu * %lu = %lu",i,j,i*j);
        }
    }
}




+ (void)factorial:(NSInteger)fact
{
    NSInteger result = 1;
    NSInteger temp = 0;
    for(NSInteger i = 1; i <= fact; i++)
    {
        
        temp = i;
        result = result * temp;
        
      
        
        
        
    }
     NSLog(@"%lu",result);
}





















@end
