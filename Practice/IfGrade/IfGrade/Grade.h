//
//  Grade.h
//  IfGrade
//
//  Created by 박찬웅 on 2017. 1. 24..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Grade : NSObject


@property NSUInteger score;
@property NSString *grade;
@property CGFloat point;

- (NSString *)scoreGrade:(NSUInteger)score;
- (CGFloat)gradeToPoint:(NSString *)grade;

@end
