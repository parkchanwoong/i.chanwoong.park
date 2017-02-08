//
//  Person.m
//  exam0131
//
//  Created by 박찬웅 on 2017. 1. 31..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "Person.h"

@implementation Person


//- (instancetype)initWithName:(NSString *)name job:(NSString *)job
//{
//    self = [super init];
//    if(self)
//    {
//        self.name = name;
//        self.job  = job;
//    }
//    return self;
//}


- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if(self)
    {
        self.name = name;
    }
    return self;
}

- (void)whatIsYourJob:(NSString *)newJob
{
    self.job = newJob;
}

- (bool)birthDayCheck
{
    if([self.birthday isEqual: @"0101"])
    {
        NSLog(@"제 생일입니다.");
        return YES;
    }
    else
    {
        NSLog(@"제 생일이 아니고, 입력하신 값은 %@입니다",self.birthday);
        NSLog(@"제 생일은 0101 입니다.");
        return NO;
    }
}


@end
