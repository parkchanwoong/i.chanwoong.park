//
//  Grade.m
//  IfGrade
//
//  Created by 박찬웅 on 2017. 1. 24..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "Grade.h"

@implementation Grade



- (NSString *)scoreGrade:(NSUInteger)score
{
    //NSString *grade;
    
    if(score >= 90)
    {
        self.grade = @"A+";
        NSLog(@"학점은 %@ 입니다.", self.grade);
    }
    
    else if(score >=80)
    {
        self.grade = @"A";
        NSLog(@"학점은 %@ 입니다.", self.grade);
    }
    
    else if(score >=70)
    {
        self.grade = @"B+";
        NSLog(@"학점은 %@ 입니다.", self.grade);
    }
    
    else if(score >=60)
    {
        self.grade = @"B";
        NSLog(@"학점은 %@ 입니다.", self.grade);
    }
    else
        
    {
        self.grade = @"F";
        NSLog(@"학점은 %@ 입니다.", self.grade);
    }
    
    return self.grade;
    
}

- (CGFloat)gradeToPoint:(NSString *)grade
{
   //CGFloat point;
    if([grade isEqualToString:@"A+"])
    {
        self.point = 4.5;
        NSLog(@"점수는 %.1f 입니다",self.point);
    }
    else if([grade isEqualToString:@"A"])
    {
        self.point = 4;
        NSLog(@"점수는 %.1f 입니다",self.point);
    }
    else if([grade isEqualToString:@"B+"])
    {
        self.point = 3.5;
        NSLog(@"점수는 %.1f 입니다",self.point);
    }
    else if([grade isEqualToString:@"B"])
    {
        self.point = 3;
        NSLog(@"점수는 %.1f 입니다",self.point);
    }
    else
    {
        self.point = 0;
        NSLog(@"점수는 %.1f 입니다",self.point);
    }


    
    return self.point;
}

@end
    

