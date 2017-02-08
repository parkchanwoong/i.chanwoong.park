//
//  Calculator.h
//  Absolute
//
//  Created by 박찬웅 on 2017. 1. 31..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property NSInteger resultValue;

- (NSInteger)calcuOP:(NSString *)calcuOP
                num1:(NSInteger)num1
                num2:(NSInteger)num2;
@end

