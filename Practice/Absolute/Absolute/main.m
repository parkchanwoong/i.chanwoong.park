//
//  main.m
//  Absolute
//
//  Created by 박찬웅 on 2017. 1. 31..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Absolute.h"
#import "Calculator.h"
#import "Rounds.h"
#import "Gogodan.h"

int main(int argc, const char * argv[]) {
    
    //절대값 구하기
    Absolute *ab = [[Absolute alloc] init];
    
    [ab absoluteNum:-5];
    NSLog(@"결과 %lu",ab.num);
    
    
    NSLog(@"결과 %lu",[ab absoluteNumber:-120]);
    
    //무조건 양수결과 계산기
    
    Calculator *cal = [[Calculator alloc] init];
    
    NSLog(@"결과 %lu",[cal calcuOP:@"-" num1:10 num2:20]);
    
    //반올림 문제
    
    NSLog(@"결과 %f",[Rounds roundNum:3.134]);
    
    //while 구구단
    [Gogodan gogodan:2];
    [Gogodan gogodan:3];
    
    //
    NSLog(@"%@",[Gogodan findMultipleNum:5 maxLange:10]);
    
    //for문 구구단
    [Gogodan gugudan:3];
    [Gogodan gugudan];
    
    
    
    
    [Gogodan factorial:5];
    
    
    
    
    
    
    
    
    
    
    return 0;
}
