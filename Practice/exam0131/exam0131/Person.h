//
//  Person.h
//  exam0131
//
//  Created by 박찬웅 on 2017. 1. 31..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString *name;
@property NSUInteger age;
@property CGFloat height;
@property NSString *birthday;    // mmdd
@property NSString *job;
@property NSString *address;
@property NSString *bloodType;


//- (instancetype)initWithName:(NSString *)name job:(NSString *)job;
- (instancetype)initWithName:(NSString *)name;
- (void)whatIsYourJob:(NSString *)check;
- (bool)birthDayCheck;

@end
