//
//  Calculator.m
//  ClassCalculator
//
//  Created by 박찬웅 on 2017. 1. 23..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator



- (NSUInteger)sumClass:(NSUInteger)math
             english:(NSUInteger)english
             science:(NSUInteger)science
             korean:(NSUInteger)korean
             music:(NSUInteger)music
{
    
    return _sum = math+english+science+korean+music;
   
}

- (NSUInteger)average:(NSUInteger)num1
                 english:(NSUInteger)english
                 science:(NSUInteger)science
                 korean:(NSUInteger)korean
                 music:(NSUInteger)music;
{
  return _average = _sum / 5;
}
@end
