//
//  Calculator.h
//  ClassCalculator
//
//  Created by 박찬웅 on 2017. 1. 23..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property NSUInteger math;
@property NSUInteger english;
@property NSUInteger science;
@property NSUInteger korean;
@property NSUInteger music;

@property NSUInteger sum;
@property NSUInteger average;

- (NSUInteger)sumClass:(NSUInteger)math
             english:(NSUInteger)english
             science:(NSUInteger)science
             korean:(NSUInteger)korean
             music:(NSUInteger)music;

- (NSUInteger)average:(NSUInteger)math
                 english:(NSUInteger)english
                 science:(NSUInteger)science
                 korean:(NSUInteger)korean
                 music:(NSUInteger)music;


@end
