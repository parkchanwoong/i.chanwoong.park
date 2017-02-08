//
//  main.m
//  IfGrade
//
//  Created by 박찬웅 on 2017. 1. 24..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Grade.h"

int main(int argc, const char * argv[]) {
    
    Grade *grade = [[Grade alloc] init];
    
     grade.score = 75;
    
    [grade scoreGrade:grade.score];
    [grade gradeToPoint:grade.grade];
    
    
    
//    [Grade scoreGrade:59];
//    [Grade gradeToPoint];
    
    
    
       return 0;
}
